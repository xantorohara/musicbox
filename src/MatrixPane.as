package {
import flash.display.BitmapData;

import mx.containers.Canvas;

public class MatrixPane extends Canvas {

    [Embed(source="images/13x88.png")]
    public var ledClass:Class;

    public var ledBitmap:BitmapData;

    public function MatrixPane() {
        super();
        width = 468;
        height = 500;
        ledBitmap = new ledClass().bitmapData;
    }

    protected override function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void {
        super.updateDisplayList(unscaledWidth, unscaledHeight);

        graphics.clear();
        graphics.beginBitmapFill(ledBitmap);
        graphics.drawRect(0, 0, unscaledWidth, unscaledHeight);
        graphics.endFill();
    }
}
}