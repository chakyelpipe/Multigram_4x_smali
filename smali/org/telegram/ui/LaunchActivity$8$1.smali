.class Lorg/telegram/ui/LaunchActivity$8$1;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity$8;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LaunchActivity$8;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity$8;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/LaunchActivity$8;

    .prologue
    .line 1467
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    iput-object p3, p0, Lorg/telegram/ui/LaunchActivity$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 1470
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$8;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/LaunchActivity;->isFinishing()Z

    move-result v12

    if-nez v12, :cond_2

    .line 1472
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$8;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1476
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/LaunchActivity$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    .line 1477
    .local v10, "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v12, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$8;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v12}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v12

    if-eqz v12, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$8;->val$game:Ljava/lang/String;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$8;->val$game:Ljava/lang/String;

    if-eqz v12, :cond_14

    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_14

    .line 1478
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget-object v13, v10, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1479
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget-object v13, v10, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 1480
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v12

    iget-object v13, v10, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    iget-object v14, v10, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v12 .. v16}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 1481
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$8;->val$game:Ljava/lang/String;

    if-eqz v12, :cond_9

    .line 1482
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1483
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v12, "onlySelect"

    const/4 v13, 0x1

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1484
    const-string/jumbo v12, "cantSendToChannels"

    const/4 v13, 0x1

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1485
    const-string/jumbo v12, "dialogsType"

    const/4 v13, 0x1

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1486
    const-string/jumbo v12, "selectAlertString"

    const-string/jumbo v13, "SendGameTo"

    const v14, 0x7f070642

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    const-string/jumbo v12, "selectAlertStringGroup"

    const-string/jumbo v13, "SendGameToGroup"

    const v14, 0x7f070643

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    new-instance v6, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v6, v2}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1489
    .local v6, "fragment":Lorg/telegram/ui/DialogsActivity;
    new-instance v12, Lorg/telegram/ui/LaunchActivity$8$1$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v10}, Lorg/telegram/ui/LaunchActivity$8$1$1;-><init>(Lorg/telegram/ui/LaunchActivity$8$1;Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;)V

    invoke-virtual {v6, v12}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 1525
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1526
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$8;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v12}, Lorg/telegram/ui/LaunchActivity;->access$600(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v12

    iget-object v12, v12, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$8;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v12}, Lorg/telegram/ui/LaunchActivity;->access$600(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v12

    iget-object v12, v12, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v13, v13, Lorg/telegram/ui/LaunchActivity$8;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v13}, Lorg/telegram/ui/LaunchActivity;->access$600(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v13

    iget-object v13, v13, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Lorg/telegram/ui/DialogsActivity;

    if-eqz v12, :cond_3

    const/4 v9, 0x1

    .line 1530
    .local v9, "removeLast":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$8;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v12}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v12, v6, v9, v13, v14}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1531
    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->getInstance()Lorg/telegram/ui/SecretMediaViewer;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/SecretMediaViewer;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1532
    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->getInstance()Lorg/telegram/ui/SecretMediaViewer;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lorg/telegram/ui/SecretMediaViewer;->closePhoto(ZZ)V

    .line 1538
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$8;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 1539
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1540
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$8;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v12}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1541
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$8;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v12}, Lorg/telegram/ui/LaunchActivity;->access$300(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1611
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v6    # "fragment":Lorg/telegram/ui/DialogsActivity;
    .end local v9    # "removeLast":Z
    .end local v10    # "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    :cond_2
    :goto_3
    return-void

    .line 1473
    :catch_0
    move-exception v3

    .line 1474
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1526
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "args":Landroid/os/Bundle;
    .restart local v6    # "fragment":Lorg/telegram/ui/DialogsActivity;
    .restart local v10    # "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 1528
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$8;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v12}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v12

    iget-object v12, v12, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$8;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v12}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v12

    iget-object v12, v12, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v13, v13, Lorg/telegram/ui/LaunchActivity$8;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v13}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v13

    iget-object v13, v13, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Lorg/telegram/ui/DialogsActivity;

    if-eqz v12, :cond_5

    const/4 v9, 0x1

    .restart local v9    # "removeLast":Z
    :goto_4
    goto/16 :goto_1

    .end local v9    # "removeLast":Z
    :cond_5
    const/4 v9, 0x0

    goto :goto_4

    .line 1533
    .restart local v9    # "removeLast":Z
    :cond_6
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1534
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto/16 :goto_2

    .line 1535
    :cond_7
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1536
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    goto/16 :goto_2

    .line 1543
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$8;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto :goto_3

    .line 1545
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v6    # "fragment":Lorg/telegram/ui/DialogsActivity;
    .end local v9    # "removeLast":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$8;->val$botChat:Ljava/lang/String;

    if-eqz v12, :cond_d

    .line 1546
    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_b

    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$User;

    move-object v11, v12

    .line 1547
    .local v11, "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_5
    if-eqz v11, :cond_a

    iget-boolean v12, v11, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v12, :cond_c

    iget-boolean v12, v11, Lorg/telegram/tgnet/TLRPC$User;->bot_nochats:Z

    if-eqz v12, :cond_c

    .line 1549
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$8;->this$0:Lorg/telegram/ui/LaunchActivity;

    const-string/jumbo v13, "BotCantJoinGroups"

    const v14, 0x7f0700da

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 1550
    :catch_1
    move-exception v3

    .line 1551
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 1546
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_b
    const/4 v11, 0x0

    goto :goto_5

    .line 1555
    .restart local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_c
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1556
    .restart local v2    # "args":Landroid/os/Bundle;
    const-string/jumbo v12, "onlySelect"

    const/4 v13, 0x1

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1557
    const-string/jumbo v12, "dialogsType"

    const/4 v13, 0x2

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1558
    const-string/jumbo v12, "addToGroupAlertString"

    const-string/jumbo v13, "AddToTheGroupTitle"

    const v14, 0x7f07005e

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v11}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string/jumbo v17, "%1$s"

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    new-instance v6, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v6, v2}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1560
    .restart local v6    # "fragment":Lorg/telegram/ui/DialogsActivity;
    new-instance v12, Lorg/telegram/ui/LaunchActivity$8$1$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v11}, Lorg/telegram/ui/LaunchActivity$8$1$2;-><init>(Lorg/telegram/ui/LaunchActivity$8$1;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v6, v12}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 1573
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$8;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v12, v6}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto/16 :goto_3

    .line 1576
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v6    # "fragment":Lorg/telegram/ui/DialogsActivity;
    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_d
    const/4 v7, 0x0

    .line 1577
    .local v7, "isBot":Z
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1578
    .restart local v2    # "args":Landroid/os/Bundle;
    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_11

    .line 1579
    const-string/jumbo v13, "chat_id"

    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v12, v12, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v2, v13, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1580
    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v12, v12, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v12, v12

    int-to-long v4, v12

    .line 1585
    .local v4, "dialog_id":J
    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$8;->val$botUser:Ljava/lang/String;

    if-eqz v12, :cond_e

    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_e

    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v12, :cond_e

    .line 1586
    const-string/jumbo v12, "botUser"

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v13, v13, Lorg/telegram/ui/LaunchActivity$8;->val$botUser:Ljava/lang/String;

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    const/4 v7, 0x1

    .line 1589
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$8;->val$messageId:Ljava/lang/Integer;

    if-eqz v12, :cond_f

    .line 1590
    const-string/jumbo v12, "message_id"

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v13, v13, Lorg/telegram/ui/LaunchActivity$8;->val$messageId:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1592
    :cond_f
    # getter for: Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->access$1500()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_12

    # getter for: Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->access$1500()Ljava/util/ArrayList;

    move-result-object v12

    # getter for: Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->access$1500()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v8, v12

    .line 1593
    .local v8, "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :goto_7
    if-eqz v8, :cond_10

    invoke-static {v2, v8}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1594
    :cond_10
    if-eqz v7, :cond_13

    if-eqz v8, :cond_13

    instance-of v12, v8, Lorg/telegram/ui/ChatActivity;

    if-eqz v12, :cond_13

    move-object v12, v8

    check-cast v12, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v12

    cmp-long v12, v12, v4

    if-nez v12, :cond_13

    .line 1595
    check-cast v8, Lorg/telegram/ui/ChatActivity;

    .end local v8    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$8;->val$botUser:Ljava/lang/String;

    invoke-virtual {v8, v12}, Lorg/telegram/ui/ChatActivity;->setBotUser(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1582
    .end local v4    # "dialog_id":J
    :cond_11
    const-string/jumbo v13, "user_id"

    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$User;

    iget v12, v12, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v2, v13, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1583
    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$User;

    iget v12, v12, Lorg/telegram/tgnet/TLRPC$User;->id:I

    int-to-long v4, v12

    .restart local v4    # "dialog_id":J
    goto/16 :goto_6

    .line 1592
    :cond_12
    const/4 v8, 0x0

    goto :goto_7

    .line 1597
    .restart local v8    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_13
    new-instance v6, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v6, v2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 1598
    .local v6, "fragment":Lorg/telegram/ui/ChatActivity;
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v12

    sget v13, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v12, v13, v14}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1599
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$8;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v12}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v12, v6, v13, v14, v15}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    goto/16 :goto_3

    .line 1605
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v4    # "dialog_id":J
    .end local v6    # "fragment":Lorg/telegram/ui/ChatActivity;
    .end local v7    # "isBot":Z
    .end local v8    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_14
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$8;->this$0:Lorg/telegram/ui/LaunchActivity;

    const-string/jumbo v13, "NoUsernameFound"

    const v14, 0x7f07048c

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    .line 1606
    :catch_2
    move-exception v3

    .line 1607
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3
.end method
