.class Lorg/telegram/ui/VoIPActivity$4$1;
.super Ljava/lang/Object;
.source "VoIPActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/VoIPActivity$4;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/VoIPActivity$4;

    .prologue
    .line 241
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$4$1;->this$1:Lorg/telegram/ui/VoIPActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 244
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$4$1;->this$1:Lorg/telegram/ui/VoIPActivity$4;

    iget-object v1, v1, Lorg/telegram/ui/VoIPActivity$4;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/VoIPActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 245
    .local v0, "am":Landroid/media/AudioManager;
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 262
    :goto_0
    return-void

    .line 247
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 261
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$4$1;->this$1:Lorg/telegram/ui/VoIPActivity$4;

    iget-object v1, v1, Lorg/telegram/ui/VoIPActivity$4;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/VoIPActivity;->onAudioSettingsChanged()V

    goto :goto_0

    .line 249
    :pswitch_0
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 250
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_1

    .line 253
    :pswitch_1
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 254
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_1

    .line 257
    :pswitch_2
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 258
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_1

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
