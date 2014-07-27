package {

import flash.display.Sprite;
import flash.events.Event;
import flash.text.TextField;

public class Main extends Sprite {
    public function Main() {
        if(stage)init(null);
        else addEventListener(Event.ADDED_TO_STAGE,init);
    }

    private function init(event:Event):void {
        removeEventListener(Event.ADDED_TO_STAGE,init);
        //
        layout();
    }

    private function layout():void {

    }
}
}
