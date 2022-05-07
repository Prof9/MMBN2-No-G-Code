from argparse import ArgumentParser
import os.path
import struct

parser = ArgumentParser(prefix_chars='@')
parser.add_argument('layer0_img')
parser.add_argument('layer0_map')
parser.add_argument('layer0_offset')
parser.add_argument('layer1_img')
parser.add_argument('layer1_map')
parser.add_argument('layer1_offset')
parser.add_argument('layer2_img')
parser.add_argument('layer2_map')
parser.add_argument('layer2_offset')
parser.add_argument('combined_map')
args = parser.parse_args()

layer0_tiles = os.path.getsize(args.layer0_img) // 32
layer1_tiles = os.path.getsize(args.layer1_img) // 32
layer2_tiles = os.path.getsize(args.layer2_img) // 32

def shift_map(map_in, map_out_f, offset):
	with open(map_in, 'rb') as map_in_f:
		while map_in_f.peek():
			entry, = struct.unpack_from('<H', map_in_f.read(2))
			map_out_f.write(struct.pack('<H', entry + offset))

offsets = [ 0, layer0_tiles, layer0_tiles + layer1_tiles ]

for i in range(3):
	attr_name = ['layer0_offset', 'layer1_offset', 'layer2_offset'][i]
	attr = getattr(args, attr_name)
	if attr.startswith('+'):
		offsets[i] += int(attr[1:], 0)
	elif attr.startswith('-'):
		offsets[i] -= int(attr[1:], 0)
	elif attr != 'auto':
		offsets[i] = int(attr, 0)

print(offsets)

with open(args.combined_map,'wb') as map_out_f:
	shift_map(args.layer0_map, map_out_f, offsets[0])
	shift_map(args.layer1_map, map_out_f, offsets[1])
	shift_map(args.layer2_map, map_out_f, offsets[2])
