.class Lorg/telegram/ui/ChatActivity$111$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$111;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$111;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$111;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$111;

    .prologue
    .line 10298
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$111$1;->this$1:Lorg/telegram/ui/ChatActivity$111;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$111$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 10301
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$111$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-eqz v4, :cond_0

    .line 10302
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$111$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    .line 10304
    .local v3, "exportedMessageLink":Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;
    :try_start_0
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "clipboard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 10305
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    const-string/jumbo v4, "label"

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;->link:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 10306
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 10307
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$111$1;->this$1:Lorg/telegram/ui/ChatActivity$111;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity$111;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "LinkCopied"

    const v6, 0x7f0703de

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10313
    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v1    # "clipboard":Landroid/content/ClipboardManager;
    .end local v3    # "exportedMessageLink":Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;
    :cond_0
    :goto_0
    return-void

    .line 10308
    .restart local v3    # "exportedMessageLink":Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;
    :catch_0
    move-exception v2

    .line 10309
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
