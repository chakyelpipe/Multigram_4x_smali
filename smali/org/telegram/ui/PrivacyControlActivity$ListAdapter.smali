.class Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "PrivacyControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PrivacyControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/PrivacyControlActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PrivacyControlActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 488
    iput-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 489
    iput-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 490
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$1600(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 623
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$1100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$1000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 632
    :cond_0
    :goto_0
    return v0

    .line 625
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$1900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$1800(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 626
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 627
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$2000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$2100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 628
    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    .line 629
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$400(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$300(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 630
    :cond_6
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 494
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 495
    .local v0, "position":I
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$300(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$400(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$1000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$1100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 13
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const v9, 0x7f07025d

    const/4 v12, -0x1

    const/4 v11, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 534
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 536
    :pswitch_0
    iget-object v4, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 537
    .local v4, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v8, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v8}, Lorg/telegram/ui/PrivacyControlActivity;->access$1100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v8

    if-ne p2, v8, :cond_5

    .line 539
    iget-object v8, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v8}, Lorg/telegram/ui/PrivacyControlActivity;->access$1300(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_1

    .line 540
    const-string/jumbo v8, "Users"

    iget-object v9, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v9}, Lorg/telegram/ui/PrivacyControlActivity;->access$1300(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 544
    .local v5, "value":Ljava/lang/String;
    :goto_1
    iget-object v8, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v8}, Lorg/telegram/ui/PrivacyControlActivity;->access$100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v8

    if-eqz v8, :cond_3

    .line 545
    const-string/jumbo v8, "AlwaysAllow"

    const v9, 0x7f07006a

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v9}, Lorg/telegram/ui/PrivacyControlActivity;->access$1000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v9

    if-eq v9, v12, :cond_2

    :goto_2
    invoke-virtual {v4, v8, v5, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 542
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v8, "EmpryUsersPlaceholder"

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_1

    :cond_2
    move v6, v7

    .line 545
    goto :goto_2

    .line 547
    :cond_3
    const-string/jumbo v8, "AlwaysShareWith"

    const v9, 0x7f07006d

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v9}, Lorg/telegram/ui/PrivacyControlActivity;->access$1000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v9

    if-eq v9, v12, :cond_4

    :goto_3
    invoke-virtual {v4, v8, v5, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    move v6, v7

    goto :goto_3

    .line 549
    .end local v5    # "value":Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v6}, Lorg/telegram/ui/PrivacyControlActivity;->access$1000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v6

    if-ne p2, v6, :cond_0

    .line 551
    iget-object v6, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v6}, Lorg/telegram/ui/PrivacyControlActivity;->access$1200(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_6

    .line 552
    const-string/jumbo v6, "Users"

    iget-object v8, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v8}, Lorg/telegram/ui/PrivacyControlActivity;->access$1200(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 556
    .restart local v5    # "value":Ljava/lang/String;
    :goto_4
    iget-object v6, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v6}, Lorg/telegram/ui/PrivacyControlActivity;->access$100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v6

    if-eqz v6, :cond_7

    .line 557
    const-string/jumbo v6, "NeverAllow"

    const v8, 0x7f070453

    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5, v7}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 554
    .end local v5    # "value":Ljava/lang/String;
    :cond_6
    const-string/jumbo v6, "EmpryUsersPlaceholder"

    invoke-static {v6, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_4

    .line 559
    :cond_7
    const-string/jumbo v6, "NeverShareWith"

    const v8, 0x7f070455

    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5, v7}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 564
    .end local v4    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    .end local v5    # "value":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 565
    .local v2, "privacyCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v7}, Lorg/telegram/ui/PrivacyControlActivity;->access$1800(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v7

    if-ne p2, v7, :cond_a

    .line 566
    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v7}, Lorg/telegram/ui/PrivacyControlActivity;->access$100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v7

    if-ne v7, v11, :cond_8

    .line 567
    const-string/jumbo v6, "WhoCanCallMeInfo"

    const v7, 0x7f07077d

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 573
    :goto_5
    iget-object v6, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0200ac

    const-string/jumbo v8, "windowBackgroundGrayShadow"

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 568
    :cond_8
    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v7}, Lorg/telegram/ui/PrivacyControlActivity;->access$100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v7

    if-ne v7, v6, :cond_9

    .line 569
    const-string/jumbo v6, "WhoCanAddMeInfo"

    const v7, 0x7f070778

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 571
    :cond_9
    const-string/jumbo v6, "CustomHelp"

    const v7, 0x7f0701e5

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 574
    :cond_a
    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v7}, Lorg/telegram/ui/PrivacyControlActivity;->access$1900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v7

    if-ne p2, v7, :cond_0

    .line 575
    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v7}, Lorg/telegram/ui/PrivacyControlActivity;->access$100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v7

    if-ne v7, v11, :cond_b

    .line 576
    const-string/jumbo v6, "CustomCallInfo"

    const v7, 0x7f0701e4

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 582
    :goto_6
    iget-object v6, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0200ad

    const-string/jumbo v8, "windowBackgroundGrayShadow"

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 577
    :cond_b
    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v7}, Lorg/telegram/ui/PrivacyControlActivity;->access$100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v7

    if-ne v7, v6, :cond_c

    .line 578
    const-string/jumbo v6, "CustomShareInfo"

    const v7, 0x7f0701e7

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 580
    :cond_c
    const-string/jumbo v6, "CustomShareSettingsHelp"

    const v7, 0x7f0701e8

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 586
    .end local v2    # "privacyCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    :pswitch_2
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 587
    .local v1, "headerCell":Lorg/telegram/ui/Cells/HeaderCell;
    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v7}, Lorg/telegram/ui/PrivacyControlActivity;->access$2000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v7

    if-ne p2, v7, :cond_f

    .line 588
    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v7}, Lorg/telegram/ui/PrivacyControlActivity;->access$100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v7

    if-ne v7, v11, :cond_d

    .line 589
    const-string/jumbo v6, "WhoCanCallMe"

    const v7, 0x7f07077c

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 590
    :cond_d
    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v7}, Lorg/telegram/ui/PrivacyControlActivity;->access$100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v7

    if-ne v7, v6, :cond_e

    .line 591
    const-string/jumbo v6, "WhoCanAddMe"

    const v7, 0x7f070777

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 593
    :cond_e
    const-string/jumbo v6, "LastSeenTitle"

    const v7, 0x7f0703d0

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 595
    :cond_f
    iget-object v6, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v6}, Lorg/telegram/ui/PrivacyControlActivity;->access$2100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v6

    if-ne p2, v6, :cond_0

    .line 596
    const-string/jumbo v6, "AddExceptions"

    const v7, 0x7f07004e

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 600
    .end local v1    # "headerCell":Lorg/telegram/ui/Cells/HeaderCell;
    :pswitch_3
    iget-object v3, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/RadioCell;

    .line 601
    .local v3, "radioCell":Lorg/telegram/ui/Cells/RadioCell;
    const/4 v0, 0x0

    .line 602
    .local v0, "checkedType":I
    iget-object v8, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v8}, Lorg/telegram/ui/PrivacyControlActivity;->access$400(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v8

    if-ne p2, v8, :cond_12

    .line 603
    const-string/jumbo v8, "LastSeenEverybody"

    const v9, 0x7f0703be

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    iget-object v8, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v8}, Lorg/telegram/ui/PrivacyControlActivity;->access$800(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v8

    if-nez v8, :cond_11

    move v8, v6

    :goto_7
    invoke-virtual {v3, v9, v8, v6}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    .line 604
    const/4 v0, 0x0

    .line 612
    :cond_10
    :goto_8
    iget-object v8, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v8}, Lorg/telegram/ui/PrivacyControlActivity;->access$800(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v8

    if-ne v8, v0, :cond_17

    .line 613
    iget-object v6, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v6}, Lorg/telegram/ui/PrivacyControlActivity;->access$600(Lorg/telegram/ui/PrivacyControlActivity;)Z

    move-result v6

    invoke-virtual {v3, v7, v6}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    goto/16 :goto_0

    :cond_11
    move v8, v7

    .line 603
    goto :goto_7

    .line 605
    :cond_12
    iget-object v8, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v8}, Lorg/telegram/ui/PrivacyControlActivity;->access$500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v8

    if-ne p2, v8, :cond_15

    .line 606
    const-string/jumbo v8, "LastSeenContacts"

    const v9, 0x7f0703b9

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    iget-object v8, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v8}, Lorg/telegram/ui/PrivacyControlActivity;->access$800(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v8

    if-ne v8, v11, :cond_13

    move v8, v6

    :goto_9
    iget-object v9, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v9}, Lorg/telegram/ui/PrivacyControlActivity;->access$300(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v9

    if-eq v9, v12, :cond_14

    move v9, v6

    :goto_a
    invoke-virtual {v3, v10, v8, v9}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    .line 607
    const/4 v0, 0x2

    goto :goto_8

    :cond_13
    move v8, v7

    .line 606
    goto :goto_9

    :cond_14
    move v9, v7

    goto :goto_a

    .line 608
    :cond_15
    iget-object v8, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v8}, Lorg/telegram/ui/PrivacyControlActivity;->access$300(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v8

    if-ne p2, v8, :cond_10

    .line 609
    const-string/jumbo v8, "LastSeenNobody"

    const v9, 0x7f0703cd

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    iget-object v8, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v8}, Lorg/telegram/ui/PrivacyControlActivity;->access$800(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v8

    if-ne v8, v6, :cond_16

    move v8, v6

    :goto_b
    invoke-virtual {v3, v9, v8, v7}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    .line 610
    const/4 v0, 0x1

    goto :goto_8

    :cond_16
    move v8, v7

    .line 609
    goto :goto_b

    .line 614
    :cond_17
    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v7}, Lorg/telegram/ui/PrivacyControlActivity;->access$000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v7

    if-ne v7, v0, :cond_0

    .line 615
    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v7}, Lorg/telegram/ui/PrivacyControlActivity;->access$600(Lorg/telegram/ui/PrivacyControlActivity;)Z

    move-result v7

    invoke-virtual {v3, v6, v7}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    goto/16 :goto_0

    .line 534
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 506
    packed-switch p2, :pswitch_data_0

    .line 523
    new-instance v0, Lorg/telegram/ui/Cells/RadioCell;

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/RadioCell;-><init>(Landroid/content/Context;)V

    .line 524
    .local v0, "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 525
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$1700(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 526
    :cond_0
    const-string/jumbo v1, "Pref"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 529
    :cond_1
    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 508
    .end local v0    # "view":Landroid/view/View;
    :pswitch_0
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 509
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 510
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$1700(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 513
    .end local v0    # "view":Landroid/view/View;
    :pswitch_1
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 514
    .restart local v0    # "view":Landroid/view/View;
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$1700(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 517
    .end local v0    # "view":Landroid/view/View;
    :pswitch_2
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 518
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 519
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$1700(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 506
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
