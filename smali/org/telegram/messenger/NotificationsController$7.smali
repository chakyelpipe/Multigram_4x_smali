.class Lorg/telegram/messenger/NotificationsController$7;
.super Ljava/lang/Object;
.source "NotificationsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationsController;->removeDeletedMessagesFromNotifications(Landroid/util/SparseArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/NotificationsController;

.field final synthetic val$deletedMessages:Landroid/util/SparseArray;

.field final synthetic val$popupArray:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationsController;Landroid/util/SparseArray;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 376
    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    iput-object p2, p0, Lorg/telegram/messenger/NotificationsController$7;->val$deletedMessages:Landroid/util/SparseArray;

    iput-object p3, p0, Lorg/telegram/messenger/NotificationsController$7;->val$popupArray:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 379
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v15}, Lorg/telegram/messenger/NotificationsController;->access$400(Lorg/telegram/messenger/NotificationsController;)I

    move-result v13

    .line 380
    .local v13, "old_unread_count":I
    sget-object v15, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v16, Lorg/telegram/messenger/ApplicationLoader;->Notifications:Ljava/lang/String;

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 381
    .local v14, "preferences":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController$7;->val$deletedMessages:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v2, v15, :cond_8

    .line 382
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController$7;->val$deletedMessages:Landroid/util/SparseArray;

    invoke-virtual {v15, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 383
    .local v5, "key":I
    neg-int v15, v5

    int-to-long v6, v15

    .line 384
    .local v6, "dialog_id":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController$7;->val$deletedMessages:Landroid/util/SparseArray;

    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 385
    .local v9, "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v15}, Lorg/telegram/messenger/NotificationsController;->access$800(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v15

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 386
    .local v4, "currentCount":Ljava/lang/Integer;
    if-nez v4, :cond_0

    .line 387
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 389
    :cond_0
    move-object v12, v4

    .line 390
    .local v12, "newCount":Ljava/lang/Integer;
    const/4 v3, 0x0

    .local v3, "b":I
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v3, v15, :cond_4

    .line 391
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    int-to-long v10, v15

    .line 392
    .local v10, "mid":J
    int-to-long v0, v5

    move-wide/from16 v16, v0

    const/16 v15, 0x20

    shl-long v16, v16, v15

    or-long v10, v10, v16

    .line 393
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v15}, Lorg/telegram/messenger/NotificationsController;->access$700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v15

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/MessageObject;

    .line 394
    .local v8, "messageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v8, :cond_3

    .line 395
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v15}, Lorg/telegram/messenger/NotificationsController;->access$700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v15

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v15}, Lorg/telegram/messenger/NotificationsController;->access$000(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 397
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v15}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 398
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v15, v8}, Lorg/telegram/messenger/NotificationsController;->access$1500(Lorg/telegram/messenger/NotificationsController;Lorg/telegram/messenger/MessageObject;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 399
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v15}, Lorg/telegram/messenger/NotificationsController;->access$510(Lorg/telegram/messenger/NotificationsController;)I

    .line 401
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController$7;->val$popupArray:Ljava/util/ArrayList;

    if-eqz v15, :cond_2

    .line 402
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController$7;->val$popupArray:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 404
    :cond_2
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 390
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 407
    .end local v8    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v10    # "mid":J
    :cond_4
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-gtz v15, :cond_5

    .line 408
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 409
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v15}, Lorg/telegram/messenger/NotificationsController;->access$1600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v15

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    :cond_5
    invoke-virtual {v12, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 412
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/NotificationsController;->access$400(Lorg/telegram/messenger/NotificationsController;)I

    move-result v16

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sub-int v16, v16, v17

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/NotificationsController;->access$402(Lorg/telegram/messenger/NotificationsController;I)I

    .line 413
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/NotificationsController;->access$400(Lorg/telegram/messenger/NotificationsController;)I

    move-result v16

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v17

    add-int v16, v16, v17

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/NotificationsController;->access$402(Lorg/telegram/messenger/NotificationsController;I)I

    .line 414
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v15}, Lorg/telegram/messenger/NotificationsController;->access$800(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v15

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    :cond_6
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-nez v15, :cond_7

    .line 417
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v15}, Lorg/telegram/messenger/NotificationsController;->access$800(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v15

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v15}, Lorg/telegram/messenger/NotificationsController;->access$1700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v15

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController$7;->val$popupArray:Ljava/util/ArrayList;

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v15}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController$7;->val$popupArray:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_7

    .line 420
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController$7;->val$popupArray:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 381
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 424
    .end local v3    # "b":I
    .end local v4    # "currentCount":Ljava/lang/Integer;
    .end local v5    # "key":I
    .end local v6    # "dialog_id":J
    .end local v9    # "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12    # "newCount":Ljava/lang/Integer;
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController$7;->val$popupArray:Ljava/util/ArrayList;

    if-eqz v15, :cond_9

    .line 425
    new-instance v15, Lorg/telegram/messenger/NotificationsController$7$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lorg/telegram/messenger/NotificationsController$7$1;-><init>(Lorg/telegram/messenger/NotificationsController$7;)V

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 432
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v15}, Lorg/telegram/messenger/NotificationsController;->access$400(Lorg/telegram/messenger/NotificationsController;)I

    move-result v15

    if-eq v13, v15, :cond_a

    .line 433
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v15}, Lorg/telegram/messenger/NotificationsController;->access$1000(Lorg/telegram/messenger/NotificationsController;)Z

    move-result v15

    if-nez v15, :cond_c

    .line 434
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v15}, Lorg/telegram/messenger/NotificationsController;->access$000(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 435
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/NotificationsController;->access$1000(Lorg/telegram/messenger/NotificationsController;)Z

    move-result v16

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/NotificationsController;->access$100(Lorg/telegram/messenger/NotificationsController;Z)V

    .line 440
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/NotificationsController;->access$1002(Lorg/telegram/messenger/NotificationsController;Z)Z

    .line 441
    const-string/jumbo v15, "badgeNumber"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 442
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/NotificationsController;->access$400(Lorg/telegram/messenger/NotificationsController;)I

    move-result v16

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/NotificationsController;->access$1200(Lorg/telegram/messenger/NotificationsController;I)V

    .line 444
    :cond_b
    return-void

    .line 437
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController$7;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v15}, Lorg/telegram/messenger/NotificationsController;->access$1300(Lorg/telegram/messenger/NotificationsController;)I

    move-result v15

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v17

    move/from16 v0, v17

    if-le v15, v0, :cond_d

    const/4 v15, 0x1

    :goto_3
    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lorg/telegram/messenger/NotificationsController;->access$1800(Lorg/telegram/messenger/NotificationsController;Z)V

    goto :goto_2

    :cond_d
    const/4 v15, 0x0

    goto :goto_3
.end method
