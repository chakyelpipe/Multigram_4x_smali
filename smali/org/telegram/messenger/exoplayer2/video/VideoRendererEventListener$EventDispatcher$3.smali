.class Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$3;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->inputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

.field final synthetic val$format:Lorg/telegram/messenger/exoplayer2/Format;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    .prologue
    .line 160
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$3;->this$0:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$3;->val$format:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$3;->this$0:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->access$000(Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$3;->val$format:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;->onVideoInputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 164
    return-void
.end method
