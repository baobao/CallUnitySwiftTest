using System.Runtime.InteropServices;

public class UnityToSwift
{
	#if !UNITY_EDITOR
	[DllImport("__Internal")]
	static extern void CallSwift_ ();
	#endif

	public static void CallSwift ()
	{
		#if !UNITY_EDITOR
		CallSwift_ ();
		#endif
	}
}
	