package viewOne.view
{
	import org.robotlegs.mvcs.Mediator;
	
	public class ViewOneMediator extends Mediator
	{
		private var _view:ViewOne;
		
		public function ViewOneMediator(view:ViewOne)
		{
			_view = view;
		}
		
		override public function onRegister():void
		{
			trace(this + " onRegister()");
			_view.signalMessageSet.add(_onMessageSet);
		}
		
		private function _onMessageSet(value:String):void
		{
			trace(this + " _onMessageSet() value: " + value);
		}
	}
}