.class Lorg/telegram/ui/ChatActivity$100;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createDeleteMessagesAlert(Lorg/telegram/messenger/MessageObject;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

.field final synthetic val$reqId:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 9291
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$100;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$100;->val$progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    iput p3, p0, Lorg/telegram/ui/ChatActivity$100;->val$reqId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 9294
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$100;->val$progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    aget-object v0, v0, v4

    if-nez v0, :cond_0

    .line 9312
    :goto_0
    return-void

    .line 9297
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$100;->val$progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    aget-object v0, v0, v4

    const-string/jumbo v1, "Loading"

    const v2, 0x7f0703eb

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 9298
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$100;->val$progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    aget-object v0, v0, v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 9299
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$100;->val$progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    aget-object v0, v0, v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    .line 9300
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$100;->val$progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    aget-object v0, v0, v4

    const/4 v1, -0x2

    const-string/jumbo v2, "Cancel"

    const v3, 0x7f070105

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChatActivity$100$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatActivity$100$1;-><init>(Lorg/telegram/ui/ChatActivity$100;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 9311
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$100;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$100;->val$progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0
.end method
