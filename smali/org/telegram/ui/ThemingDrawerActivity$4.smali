.class Lorg/telegram/ui/ThemingDrawerActivity$4;
.super Ljava/lang/Object;
.source "ThemingDrawerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingDrawerActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ThemingDrawerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingDrawerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ThemingDrawerActivity;

    .prologue
    .line 592
    iput-object p1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x1

    .line 595
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 596
    const/4 v0, 0x0

    .line 663
    :goto_0
    return v0

    .line 610
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->headerColorRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$200(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_2

    .line 611
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerHeaderColor"

    # invokes: Lorg/telegram/ui/ThemingDrawerActivity;->resetInt(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    .line 661
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # setter for: Lorg/telegram/ui/ThemingDrawerActivity;->drawer:Z
    invoke-static {v1, v0}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2802(Lorg/telegram/ui/ThemingDrawerActivity;Z)Z

    goto :goto_0

    .line 612
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->headerGradientRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_3

    .line 613
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerHeaderGradient"

    # invokes: Lorg/telegram/ui/ThemingDrawerActivity;->resetInt(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 614
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->headerGradientColorRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$600(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_4

    .line 615
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerHeaderGradientColor"

    # invokes: Lorg/telegram/ui/ThemingDrawerActivity;->resetInt(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 616
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->listColorRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1000(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_5

    .line 617
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerListColor"

    # invokes: Lorg/telegram/ui/ThemingDrawerActivity;->resetInt(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    .line 618
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # setter for: Lorg/telegram/ui/ThemingDrawerActivity;->player:Z
    invoke-static {v1, v0}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1102(Lorg/telegram/ui/ThemingDrawerActivity;Z)Z

    goto :goto_1

    .line 619
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->rowGradientColorRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1200(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_6

    .line 620
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerRowGradientColor"

    # invokes: Lorg/telegram/ui/ThemingDrawerActivity;->resetInt(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    .line 621
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # setter for: Lorg/telegram/ui/ThemingDrawerActivity;->player:Z
    invoke-static {v1, v0}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1102(Lorg/telegram/ui/ThemingDrawerActivity;Z)Z

    goto :goto_1

    .line 622
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->rowGradientRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_7

    .line 623
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerRowGradient"

    # invokes: Lorg/telegram/ui/ThemingDrawerActivity;->resetInt(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    .line 624
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # setter for: Lorg/telegram/ui/ThemingDrawerActivity;->player:Z
    invoke-static {v1, v0}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1102(Lorg/telegram/ui/ThemingDrawerActivity;Z)Z

    goto :goto_1

    .line 625
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->rowGradientListCheckRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1300(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_8

    .line 626
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerRowGradientListCheck"

    # invokes: Lorg/telegram/ui/ThemingDrawerActivity;->resetInt(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    .line 627
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # setter for: Lorg/telegram/ui/ThemingDrawerActivity;->player:Z
    invoke-static {v1, v0}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1102(Lorg/telegram/ui/ThemingDrawerActivity;Z)Z

    goto :goto_1

    .line 628
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->listDividerColorRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_9

    .line 629
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerListDividerColor"

    # invokes: Lorg/telegram/ui/ThemingDrawerActivity;->resetInt(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 630
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->avatarColorRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1900(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_a

    .line 631
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerAvatarColor"

    # invokes: Lorg/telegram/ui/ThemingDrawerActivity;->resetInt(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 632
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->avatarRadiusRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2200(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_b

    .line 633
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerAvatarRadius"

    # invokes: Lorg/telegram/ui/ThemingDrawerActivity;->resetInt(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 634
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->nameColorRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2000(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_c

    .line 635
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerNameColor"

    # invokes: Lorg/telegram/ui/ThemingDrawerActivity;->resetInt(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 636
    :cond_c
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->avatarSizeRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2300(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_d

    .line 637
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerAvatarSize"

    # invokes: Lorg/telegram/ui/ThemingDrawerActivity;->resetInt(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 638
    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->nameSizeRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_e

    .line 639
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerNameSize"

    # invokes: Lorg/telegram/ui/ThemingDrawerActivity;->resetInt(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 640
    :cond_e
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->phoneColorRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2100(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_f

    .line 641
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerPhoneColor"

    # invokes: Lorg/telegram/ui/ThemingDrawerActivity;->resetInt(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 642
    :cond_f
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->phoneSizeRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_10

    .line 643
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerPhoneSize"

    # invokes: Lorg/telegram/ui/ThemingDrawerActivity;->resetInt(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 644
    :cond_10
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->iconColorRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1600(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_11

    .line 645
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerIconColor"

    # invokes: Lorg/telegram/ui/ThemingDrawerActivity;->resetInt(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    .line 646
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # setter for: Lorg/telegram/ui/ThemingDrawerActivity;->player:Z
    invoke-static {v1, v0}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1102(Lorg/telegram/ui/ThemingDrawerActivity;Z)Z

    goto/16 :goto_1

    .line 647
    :cond_11
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->optionColorRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1700(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_12

    .line 648
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerOptionColor"

    # invokes: Lorg/telegram/ui/ThemingDrawerActivity;->resetInt(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    .line 649
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # setter for: Lorg/telegram/ui/ThemingDrawerActivity;->player:Z
    invoke-static {v1, v0}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1102(Lorg/telegram/ui/ThemingDrawerActivity;Z)Z

    goto/16 :goto_1

    .line 650
    :cond_12
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->optionSizeRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2600(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_13

    .line 651
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerOptionSize"

    # invokes: Lorg/telegram/ui/ThemingDrawerActivity;->resetInt(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 652
    :cond_13
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->versionColorRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1800(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_14

    .line 653
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerVersionColor"

    # invokes: Lorg/telegram/ui/ThemingDrawerActivity;->resetInt(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 654
    :cond_14
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    # getter for: Lorg/telegram/ui/ThemingDrawerActivity;->versionSizeRow:I
    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2700(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p3, v1, :cond_15

    .line 655
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v2, "drawerVersionSize"

    # invokes: Lorg/telegram/ui/ThemingDrawerActivity;->resetInt(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2900(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 657
    :cond_15
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 658
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$4;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lorg/telegram/ui/ThemingDrawerActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/telegram/ui/ThemingDrawerActivity;->access$3000(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
