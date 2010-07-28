package viewOne.view
{
	import common.controller.signals.MessageSentSignal;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class ViewOneMediator extends Mediator
	{
		[Inject]
		public var signalViewOneMessageSent:MessageSentSignal;
		
		private var _view:ViewOne;
		
		public function ViewOneMediator(view:ViewOne)
		{
			_view = view;
		}
		
		override public function onRegister():void
		{			
			trace(this + " onRegister() signalViewOneMessageSent: " + signalViewOneMessageSent);
			_view.signalMessageSet.add(_onMessageSet);
		}
		
		private function _onMessageSet(value:String):void
		{
			trace(this + " _onMessageSet() value: " + value);
			signalViewOneMessageSent.dispatch(value);
		}
	}
}