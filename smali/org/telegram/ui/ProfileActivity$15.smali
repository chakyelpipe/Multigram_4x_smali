.class Lorg/telegram/ui/ProfileActivity$15;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 1394
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v12, 0x7f07032d

    const v11, 0x7f070326

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1397
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1457
    :cond_0
    :goto_0
    return-void

    .line 1400
    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v6

    if-eqz v6, :cond_3

    .line 1401
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->playProfileAnimation:Z
    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$4900(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$5100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$5000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lorg/telegram/ui/ChatActivity;

    if-eqz v6, :cond_2

    .line 1402
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ProfileActivity;->finishFragment()V

    goto :goto_0

    .line 1404
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    .line 1405
    .local v5, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v5, :cond_0

    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_userEmpty;

    if-nez v6, :cond_0

    .line 1408
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1409
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v6, "user_id"

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1410
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0, v6}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1413
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v8, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1414
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1415
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v7, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v7, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v6, v7, v10}, Lorg/telegram/ui/ProfileActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_0

    .line 1417
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->chat_id:I
    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 1418
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    .line 1419
    .local v3, "isChannel":Z
    if-eqz v3, :cond_4

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->canEditInfo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    if-nez v3, :cond_7

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->admin:Z

    if-nez v6, :cond_7

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v6, :cond_7

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-eqz v6, :cond_7

    .line 1420
    :cond_5
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->playProfileAnimation:Z
    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$4900(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$5300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$5200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lorg/telegram/ui/ChatActivity;

    if-eqz v6, :cond_6

    .line 1421
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ProfileActivity;->finishFragment()V

    goto/16 :goto_0

    .line 1423
    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1424
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string/jumbo v6, "chat_id"

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1425
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0, v6}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1428
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v8, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1429
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1430
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v7, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v7, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v6, v7, v10}, Lorg/telegram/ui/ProfileActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_0

    .line 1433
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_7
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1435
    .local v1, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->chat_id:I
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 1436
    .local v2, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v6, :cond_8

    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v6, :cond_8

    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_chatPhotoEmpty;

    if-eqz v6, :cond_9

    .line 1437
    :cond_8
    new-array v4, v8, [Ljava/lang/CharSequence;

    const-string/jumbo v6, "FromCamera"

    invoke-static {v6, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    const-string/jumbo v6, "FromGalley"

    invoke-static {v6, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    .line 1442
    .local v4, "items":[Ljava/lang/CharSequence;
    :goto_1
    new-instance v6, Lorg/telegram/ui/ProfileActivity$15$1;

    invoke-direct {v6, p0}, Lorg/telegram/ui/ProfileActivity$15$1;-><init>(Lorg/telegram/ui/ProfileActivity$15;)V

    invoke-virtual {v1, v4, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1454
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1439
    .end local v4    # "items":[Ljava/lang/CharSequence;
    :cond_9
    const/4 v6, 0x3

    new-array v4, v6, [Ljava/lang/CharSequence;

    const-string/jumbo v6, "FromCamera"

    invoke-static {v6, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    const-string/jumbo v6, "FromGalley"

    invoke-static {v6, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    const-string/jumbo v6, "DeletePhoto"

    const v7, 0x7f070212

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    .restart local v4    # "items":[Ljava/lang/CharSequence;
    goto :goto_1
.end method
