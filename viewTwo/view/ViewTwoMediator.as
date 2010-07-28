package viewTwo.view
{
	import common.controller.signals.MessageSentSignal;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class ViewTwoMediator extends Mediator
	{
		[Inject]
		public var signalViewOneMessageSent:MessageSentSignal;
		
		private var _view:ViewTwo;
		
		public function ViewTwoMediator(view:ViewTwo)
		{
			_view = view;
		}
		
		override public function onRegister():void
		{
			trace(this + " onRegister() signalViewOneMessageSent: " + signalViewOneMessageSent);
			//signalViewOneMessageSent.add(_onViewOneMessageSent);
		}
		
		private function _onViewOneMessageSent(value:String):void
		{
			_view.message = value;
		}
	}
}