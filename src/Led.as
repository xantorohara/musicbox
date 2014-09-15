package {
import mx.controls.Image;

public class Led extends Image {

    public static const SIZE:int = 13;

    [Embed(source="images/lamp_yellow.png")]
    private var led1Cls:Class;

    [Embed(source="images/lamp_red.png")]
    private var led2Cls:Class;

    public function Led(x:int, y:int) {
        super();
        this.x = x;
        this.y = y;
        width = SIZE;
        height = SIZE;
        source = led1Cls;
    }

    public function led1():void {
        source = led1Cls;
    }

    public function led2():void {
        source = led2Cls;
    }
}
}