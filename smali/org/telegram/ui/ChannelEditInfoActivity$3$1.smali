.class Lorg/telegram/ui/ChannelEditInfoActivity$3$1;
.super Ljava/lang/Object;
.source "ChannelEditInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditInfoActivity$3;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelEditInfoActivity$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditInfoActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelEditInfoActivity$3;

    .prologue
    .line 263
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3$1;->this$1:Lorg/telegram/ui/ChannelEditInfoActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 266
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3$1;->this$1:Lorg/telegram/ui/ChannelEditInfoActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    # setter for: Lorg/telegram/ui/ChannelEditInfoActivity;->createAfterUpload:Z
    invoke-static {v1, v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1102(Lorg/telegram/ui/ChannelEditInfoActivity;Z)Z

    .line 267
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3$1;->this$1:Lorg/telegram/ui/ChannelEditInfoActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/ui/ChannelEditInfoActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v1, v2}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1202(Lorg/telegram/ui/ChannelEditInfoActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 268
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$3$1;->this$1:Lorg/telegram/ui/ChannelEditInfoActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/ChannelEditInfoActivity$3;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    # setter for: Lorg/telegram/ui/ChannelEditInfoActivity;->donePressed:Z
    invoke-static {v1, v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$402(Lorg/telegram/ui/ChannelEditInfoActivity;Z)Z

    .line 270
    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
