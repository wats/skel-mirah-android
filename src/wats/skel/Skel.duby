import "android.app.Activity"
import "android.media.MediaPlayer"
import "android.os.Bundle"
import "android.view.View"
import "android.widget.Button"
import "android.widget.ImageView"
import "wats.skel.R"
import "OnClickListener", "android.view.View$OnClickListener"
import "android.util.Log"
import "android.content.Context"

class Skel < Activity
  
  def onCreate(savedInstanceState:Bundle)
    super(savedInstanceState)
    setContentView(R.layout.main);
    @context = getBaseContext()
    skel = findViewById(R.id.ImageView01)
    listener = SkelClickListener.new(@context)
    skel.setOnClickListener(listener)
  end
  
  class SkelClickListener
    implements OnClickListener
    def initialize(context:Context)
      @context = context
    end
    def onClick(view:View)
      Log.i("test", "Just a test")
      mp = MediaPlayer.create(Context(@context), R.raw.skel);
      mp.start();
    end
  end

end


