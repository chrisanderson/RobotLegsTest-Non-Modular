package viewTwo.view
{
	import org.robotlegs.mvcs.Mediator;
	
	public class ViewTwoMediator extends Mediator
	{
		private var _view:ViewTwo;
		
		public function ViewTwoMediator(view:ViewTwo)
		{
			_view = view;
		}
		
		override public function onRegister():void
		{
			trace(this + " onRegister()");
		}
	}
}