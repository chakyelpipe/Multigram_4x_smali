.class Lorg/telegram/ui/LaunchActivity$19;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->showToast(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 2463
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$19;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xbb8

    .line 2469
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$19;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$2200(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$19;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->time:J
    invoke-static {v2}, Lorg/telegram/ui/LaunchActivity;->access$2300(Lorg/telegram/ui/LaunchActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1

    .line 2471
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$19;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$2200(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2473
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$19;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->stat:I
    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$2400(Lorg/telegram/ui/LaunchActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$19;->this$0:Lorg/telegram/ui/LaunchActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/LaunchActivity;->msg:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/telegram/ui/LaunchActivity;->access$2502(Lorg/telegram/ui/LaunchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2474
    :cond_0
    new-instance v0, Lorg/telegram/ui/LaunchActivity$19$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LaunchActivity$19$1;-><init>(Lorg/telegram/ui/LaunchActivity$19;)V

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 2489
    :cond_1
    return-void
.end method
