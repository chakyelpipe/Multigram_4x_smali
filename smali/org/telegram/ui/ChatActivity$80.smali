.class Lorg/telegram/ui/ChatActivity$80;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->addToSelectedMessages(Lorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$backupItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field final synthetic val$newVisibility:I

.field final synthetic val$replyItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;ILorg/telegram/ui/ActionBar/ActionBarMenuItem;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 5883
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    iput p2, p0, Lorg/telegram/ui/ChatActivity$80;->val$newVisibility:I

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$80;->val$replyItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iput-object p4, p0, Lorg/telegram/ui/ChatActivity$80;->val$backupItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 5896
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->replyButtonAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16500(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->replyButtonAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16500(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5897
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ChatActivity;->replyButtonAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$16502(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 5899
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v0, 0x8

    .line 5886
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->replyButtonAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$16500(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->replyButtonAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$16500(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5887
    iget v1, p0, Lorg/telegram/ui/ChatActivity$80;->val$newVisibility:I

    if-ne v1, v0, :cond_0

    .line 5888
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$80;->val$replyItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 5890
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$80;->val$backupItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$80;->val$backupItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$80;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    :goto_0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 5892
    :cond_2
    return-void

    .line 5890
    :cond_3
    iget v2, p0, Lorg/telegram/ui/ChatActivity$80;->val$newVisibility:I

    if-ne v2, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method
