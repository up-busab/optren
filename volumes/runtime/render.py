import mitsuba as mi


print(mi.variants())
mi.set_variant('llvm_ad_rgb')


scene = mi.load_dict(mi.cornell_box())

img = mi.render(scene)

def get_format(): return (mi.Bitmap.PixelFormat.RGBA,mi.Struct.Type.Float32)

def write_png(img,filename): 
    pf,cf = get_format()
    pf=pf
    cf=cf
    mi.Bitmap(img,pf,cf).write(filename)

mi.util.write_bitmap('/var/data/cbox.png',img)

