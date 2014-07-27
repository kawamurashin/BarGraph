/**
 * Created with IntelliJ IDEA.
 * User: shin
 * Date: 2014/07/27
 * Time: 12:38
 * To change this template use File | Settings | File Templates.
 */
package {
import flash.display.Sprite;
import flash.events.Event;

import graph.BarGraphManager;

public class ViewManager extends Sprite{
    public function ViewManager() {
        if(stage)init(null);
        else addEventListener(Event.ADDED_TO_STAGE, init);
    }

    private function init(event:Event):void {
        removeEventListener(Event.ADDED_TO_STAGE, init);
        //
        layout();
    }

    private function layout():void {

        var barManager:BarGraphManager = new BarGraphManager();
        addChild(barManager);
        barManager.x = 300;
        barManager.y = 300;

    }
}
}
