package views
{

	import flash.utils.getTimer;
	
	import spark.components.Group;
	
	public class TestView extends Group implements ITestView
	{
		
		private var _createTime:int;
		
		public function TestView()
		{
			_createTime = getTimer();
		}

		public function get createTime():int
		{
			return _createTime;
		}

	}
}