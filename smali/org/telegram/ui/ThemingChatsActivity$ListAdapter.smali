.class Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThemingChatsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ThemingChatsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ThemingChatsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ThemingChatsActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1243
    iput-object p1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1244
    iput-object p2, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 1245
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1249
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1268
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$5700(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1273
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 1278
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x2

    .line 1556
    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$6000(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 1557
    const/4 v0, 0x0

    .line 1576
    :cond_0
    :goto_0
    return v0

    .line 1558
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$5800(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$5900(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 1559
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1560
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$3800(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$4100(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$4200(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$4300(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$4400(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$4500(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    .line 1561
    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$4600(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$4700(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$4000(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$3900(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 1563
    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$200(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$400(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$500(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$600(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$700(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    .line 1564
    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$800(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$900(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$1000(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$1100(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    .line 1565
    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$1200(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$1500(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$1800(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$2300(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$2400(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$2500(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    .line 1566
    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$2600(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$2700(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$2800(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$2900(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$3000(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$3100(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    .line 1567
    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$3200(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$3300(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$3400(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$3500(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$3600(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    .line 1568
    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$3700(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$4800(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$4900(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$1300(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$1400(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    .line 1569
    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$1700(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 1570
    :cond_4
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 1571
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$1600(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$5300(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$5000(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$5100(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$5200(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_7

    .line 1572
    :cond_6
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 1573
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$1900(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$2100(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatsActivity;->access$2200(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 1574
    :cond_8
    const/4 v0, 0x5

    goto/16 :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 1288
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->getItemViewType(I)I

    move-result v6

    .line 1289
    .local v6, "type":I
    const-string/jumbo v1, ""

    .line 1290
    .local v1, "prefix":Ljava/lang/String;
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$000(Lorg/telegram/ui/ThemingChatsActivity;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1291
    const-string/jumbo v1, "1."

    .line 1292
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$5800(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_3

    .line 1293
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "1 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1302
    :cond_0
    :goto_0
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v11, "theme"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1305
    .local v5, "themePrefs":Landroid/content/SharedPreferences;
    if-nez v6, :cond_6

    .line 1306
    if-nez p2, :cond_1

    .line 1307
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v0, v10}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 1548
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 1549
    sget-boolean v10, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v10, :cond_50

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    :goto_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1551
    :cond_2
    return-object p2

    .line 1294
    .end local v5    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_3
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$5900(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_4

    .line 1295
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "2 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1296
    :cond_4
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$5900(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ge v0, v10, :cond_5

    .line 1297
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "1."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1299
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "2."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/ThemingChatsActivity;->access$5900(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v11

    sub-int v11, p1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1309
    .restart local v5    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_6
    const/4 v10, 0x1

    if-ne v6, v10, :cond_9

    .line 1310
    if-nez p2, :cond_7

    .line 1311
    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v0, v10}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 1312
    .restart local p2    # "view":Landroid/view/View;
    const/4 v10, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1314
    :cond_7
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$5800(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_8

    move-object/from16 v10, p2

    .line 1315
    check-cast v10, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "Header"

    const v13, 0x7f070349

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1316
    :cond_8
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$5900(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_1

    move-object/from16 v10, p2

    .line 1317
    check-cast v10, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "ChatsList"

    const v13, 0x7f07018a

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1319
    :cond_9
    const/4 v10, 0x2

    if-ne v6, v10, :cond_16

    .line 1320
    if-nez p2, :cond_a

    .line 1321
    new-instance p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v0, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_a
    move-object/from16 v4, p2

    .line 1323
    check-cast v4, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 1324
    .local v4, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$3800(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_b

    .line 1325
    const-string/jumbo v10, "chatsAvatarRadius"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1326
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "AvatarRadius"

    const v12, 0x7f0700c9

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->chatsAvatarRadius:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1327
    :cond_b
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$4000(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_c

    .line 1328
    const-string/jumbo v10, "chatsHeaderTabCounterSize"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1329
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "CountSize"

    const v12, 0x7f0701d2

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->chatsTabCounterSize:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1330
    :cond_c
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$4100(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_d

    .line 1331
    const-string/jumbo v10, "chatsAvatarSize"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1332
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "AvatarSize"

    const v12, 0x7f0700ca

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->chatsAvatarSize:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1333
    :cond_d
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$4200(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_e

    .line 1334
    const-string/jumbo v10, "chatsAvatarMarginLeft"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1335
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "AvatarMarginLeft"

    const v12, 0x7f0700c8

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->chatsAvatarMarginLeft:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1336
    :cond_e
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$4300(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_f

    .line 1337
    const-string/jumbo v10, "chatsNameSize"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1338
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "NameSize"

    const v12, 0x7f07044e

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->chatsNameSize:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1339
    :cond_f
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$4400(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_10

    .line 1340
    const-string/jumbo v10, "chatsGroupNameSize"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1341
    const-string/jumbo v10, "chatsGroupNameSize"

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->chatsNameSize:I

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1342
    .local v2, "size":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "GroupNameSize"

    const v12, 0x7f07033c

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1343
    .end local v2    # "size":I
    :cond_10
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$4500(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_12

    .line 1344
    const-string/jumbo v10, "chatsMessageSize"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1345
    const-string/jumbo v11, "chatsMessageSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v10

    if-eqz v10, :cond_11

    const/16 v10, 0x12

    :goto_3
    invoke-interface {v5, v11, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1346
    .restart local v2    # "size":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "MessageSize"

    const v12, 0x7f070429

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1345
    .end local v2    # "size":I
    :cond_11
    const/16 v10, 0x10

    goto :goto_3

    .line 1347
    :cond_12
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$4600(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_14

    .line 1348
    const-string/jumbo v10, "chatsTimeSize"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1349
    const-string/jumbo v11, "chatsTimeSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v10

    if-eqz v10, :cond_13

    const/16 v10, 0xf

    :goto_4
    invoke-interface {v5, v11, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1350
    .restart local v2    # "size":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "TimeDateSize"

    const v12, 0x7f0706e1

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1349
    .end local v2    # "size":I
    :cond_13
    const/16 v10, 0xd

    goto :goto_4

    .line 1351
    :cond_14
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$4700(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_15

    .line 1352
    const-string/jumbo v10, "chatsCountSize"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1353
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "CountSize"

    const v12, 0x7f0701d2

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->chatsCountSize:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1354
    :cond_15
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$3900(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_1

    .line 1355
    const-string/jumbo v10, "chatsTabsTextSize"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1356
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "TabsTextSize"

    const v12, 0x7f0706c9

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->chatsTabsTextSize:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1358
    .end local v4    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :cond_16
    const/4 v10, 0x3

    if-ne v6, v10, :cond_38

    .line 1359
    if-nez p2, :cond_17

    .line 1360
    new-instance p2, Lorg/telegram/ui/Cells/TextColorCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v0, v10}, Lorg/telegram/ui/Cells/TextColorCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_17
    move-object/from16 v4, p2

    .line 1363
    check-cast v4, Lorg/telegram/ui/Cells/TextColorCell;

    .line 1365
    .local v4, "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$200(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_18

    .line 1366
    const-string/jumbo v10, "chatsHeaderColor"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1367
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "HeaderColor"

    const v12, 0x7f07034a

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderColor:I

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1368
    :cond_18
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$400(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_19

    .line 1369
    const-string/jumbo v10, "chatsHeaderGradientColor"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1370
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradientColor"

    const v12, 0x7f0705ff

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderGradientColor:I

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1371
    :cond_19
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$500(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_1a

    .line 1372
    const-string/jumbo v10, "chatsHeaderTitleColor"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1373
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "HeaderTitleColor"

    const v12, 0x7f070353

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderTitleColor:I

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1374
    :cond_1a
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$600(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_1b

    .line 1375
    const-string/jumbo v10, "chatsHeaderIconsColor"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1376
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "HeaderIconsColor"

    const v12, 0x7f07034b

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderIconsColor:I

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1377
    :cond_1b
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$700(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_1c

    .line 1378
    const-string/jumbo v10, "chatsHeaderTabIconColor"

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderIconsColor:I

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderTabIconColor:I

    .line 1379
    const-string/jumbo v10, "chatsHeaderTabIconColor"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1380
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "HeaderTabIconColor"

    const v12, 0x7f070350

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderTabIconColor:I

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1381
    :cond_1c
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$800(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_1d

    .line 1382
    const-string/jumbo v10, "chatsHeaderTabUnselectedIconColor"

    const-string/jumbo v11, "chatsHeaderTabIconColor"

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderIconsColor:I

    const v13, 0x3eb33333    # 0.35f

    invoke-static {v11, v12, v13}, Lorg/telegram/messenger/AndroidUtilities;->getIntAlphaColor(Ljava/lang/String;IF)I

    move-result v11

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderTabUnselectedIconColor:I

    .line 1383
    const-string/jumbo v10, "chatsHeaderTabUnselectedIconColor"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1384
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "HeaderTabUnselectedIconColor"

    const v12, 0x7f070351

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderTabUnselectedIconColor:I

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1385
    :cond_1d
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$900(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_1e

    .line 1386
    const-string/jumbo v10, "chatsHeaderTabCounterColor"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1387
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "HeaderTabCounterColor"

    const v12, 0x7f07034d

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->chatsTabCounterColor:I

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1388
    :cond_1e
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$1000(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_1f

    .line 1389
    const-string/jumbo v10, "chatsHeaderTabCounterBGColor"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1390
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "HeaderTabCounterBGColor"

    const v12, 0x7f07034c

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->chatsTabCounterBGColor:I

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1391
    :cond_1f
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$1100(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_20

    .line 1392
    const-string/jumbo v10, "chatsHeaderTabCounterSilentBGColor"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1393
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "CountSilentBGColor"

    const v12, 0x7f0701d1

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->chatsTabCounterSilentBGColor:I

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1394
    :cond_20
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$1200(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_21

    .line 1395
    const-string/jumbo v10, "chatsRowColor"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1396
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowColor"

    const v12, 0x7f0705fc

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->chatsRowColor:I

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1397
    :cond_21
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$1300(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_22

    .line 1398
    const-string/jumbo v10, "chatsTabsBGColor"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1399
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "TabsBGColor"

    const v12, 0x7f0706c7

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatsTabsBGColor"

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1400
    :cond_22
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$1400(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_23

    .line 1401
    const-string/jumbo v10, "chatsFavIndicatorColor"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1402
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "FavIndicatorColor"

    const v12, 0x7f0702cd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatsFavIndicatorColor"

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->FAV_INDICATOR_COLOR_DEF:I

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1403
    :cond_23
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$1500(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_25

    .line 1404
    const-string/jumbo v10, "chatsRowGradientColor"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1405
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradientColor"

    const v12, 0x7f0705ff

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->chatsRowGradient:I

    if-nez v10, :cond_24

    const/4 v10, 0x0

    :goto_5
    const/4 v12, 0x1

    invoke-virtual {v4, v11, v10, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_24
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->chatsRowGradientColor:I

    goto :goto_5

    .line 1406
    :cond_25
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$1700(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_26

    .line 1407
    const-string/jumbo v10, "chatsPinnedMsgBGColor"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1408
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "PinnedMsgBgColor"

    const v12, 0x7f0707c8

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatsPinnedMsgBGColor"

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->chatsRowColor:I

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1409
    :cond_26
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$1800(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_27

    .line 1410
    const-string/jumbo v10, "chatsDividerColor"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1411
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "DividerColor"

    const v12, 0x7f070230

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->chatsDividerColor:I

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1412
    :cond_27
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$2300(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_28

    .line 1413
    const-string/jumbo v10, "chatsNameColor"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1414
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "NameColor"

    const v12, 0x7f07044d

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->chatsNameColor:I

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1415
    :cond_28
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$2400(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_29

    .line 1416
    const-string/jumbo v10, "chatsGroupNameColor"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1417
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "GroupNameColor"

    const v12, 0x7f07033b

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatsGroupNameColor"

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->chatsNameColor:I

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1418
    :cond_29
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$2500(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_2a

    .line 1419
    const-string/jumbo v10, "chatsUnknownNameColor"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1420
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "UnknownNameColor"

    const v12, 0x7f070703

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatsUnknownNameColor"

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->chatsNameColor:I

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1421
    :cond_2a
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$2600(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_2b

    .line 1422
    const-string/jumbo v10, "chatsGroupIconColor"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1423
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "GroupIconColor"

    const v12, 0x7f070339

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatsGroupIconColor"

    const-string/jumbo v12, "chatsGroupNameColor"

    const/high16 v13, -0x1000000

    invoke-interface {v5, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1424
    :cond_2b
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$2700(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_2c

    .line 1425
    const-string/jumbo v10, "chatsMuteColor"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1426
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "MuteColor"

    const v12, 0x7f070448

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatsMuteColor"

    const v12, -0x575758

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1427
    :cond_2c
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$2800(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_2d

    .line 1428
    const-string/jumbo v10, "chatsChecksColor"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1429
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ChecksColor"

    const v12, 0x7f07018c

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->chatsChecksColor:I

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1430
    :cond_2d
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$2900(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_2e

    .line 1431
    const-string/jumbo v10, "chatsMessageColor"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1432
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "MessageColor"

    const v12, 0x7f07041e

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->chatsMessageColor:I

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1433
    :cond_2e
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$3100(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_2f

    .line 1434
    const-string/jumbo v10, "chatsMemberColor"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1435
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "MemberColor"

    const v12, 0x7f070414

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->chatsMemberColor:I

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1436
    :cond_2f
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$3200(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_30

    .line 1437
    const-string/jumbo v10, "chatsMediaColor"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1438
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "MediaColor"

    const v12, 0x7f070407

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatsMediaColor"

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->chatsMemberColor:I

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1439
    :cond_30
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$3300(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_31

    .line 1440
    const-string/jumbo v10, "chatsTypingColor"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1441
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "TypingColor"

    const v12, 0x7f0706fc

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/TextColorCell;->getTag()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1442
    :cond_31
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$3400(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_32

    .line 1443
    const-string/jumbo v10, "chatsTimeColor"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1444
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "TimeDateColor"

    const v12, 0x7f0706e0

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatsTimeColor"

    const v12, -0x666667

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1445
    :cond_32
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$3500(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_33

    .line 1446
    const-string/jumbo v10, "chatsCountColor"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1447
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "CountColor"

    const v12, 0x7f0701ce

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatsCountColor"

    const/4 v12, -0x1

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1448
    :cond_33
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$3600(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_34

    .line 1449
    const-string/jumbo v10, "chatsCountBGColor"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1450
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "CountBGColor"

    const v12, 0x7f0701cd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatsCountBGColor"

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1454
    :cond_34
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$3700(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_35

    .line 1455
    const-string/jumbo v10, "chatsCountSilentBGColor"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1456
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "CountSilentBGColor"

    const v12, 0x7f0701d1

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatsCountSilentBGColor"

    const-string/jumbo v12, "chatsCountBGColor"

    const v13, -0x464647

    invoke-interface {v5, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1457
    :cond_35
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$4800(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_36

    .line 1458
    const-string/jumbo v10, "chatsFloatingPencilColor"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1459
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "FloatingPencilColor"

    const v12, 0x7f0702da

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->chatsFloatingPencilColor:I

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1460
    :cond_36
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$4900(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_37

    .line 1461
    const-string/jumbo v10, "chatsFloatingBGColor"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1462
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "FloatingBGColor"

    const v12, 0x7f0702d9

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->chatsFloatingBGColor:I

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1463
    :cond_37
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$3000(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_1

    .line 1464
    const-string/jumbo v10, "chatsHighlightSearchColor"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1465
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "HighlightSearchColor"

    const v12, 0x7f070365

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "chatsHighlightSearchColor"

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->lightColor:I

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1467
    .end local v4    # "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    :cond_38
    const/4 v10, 0x4

    if-ne v6, v10, :cond_3f

    .line 1468
    if-nez p2, :cond_39

    .line 1469
    new-instance p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v0, v10}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_39
    move-object/from16 v4, p2

    .line 1471
    check-cast v4, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1472
    .local v4, "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$1600(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_3b

    .line 1473
    const-string/jumbo v10, "chatsRowGradientListCheck"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 1474
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradientList"

    const v12, 0x7f070602

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->chatsRowGradient:I

    if-eqz v10, :cond_3a

    const-string/jumbo v10, "chatsRowGradientListCheck"

    const/4 v12, 0x0

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_3a

    const/4 v10, 0x1

    :goto_6
    const/4 v12, 0x1

    invoke-virtual {v4, v11, v10, v12}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    :cond_3a
    const/4 v10, 0x0

    goto :goto_6

    .line 1475
    :cond_3b
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$5300(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_3c

    .line 1476
    const-string/jumbo v10, "chatsHideHeaderShadow"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 1477
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "HideHeaderShadow"

    const v12, 0x7f0707c4

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-boolean v11, Lorg/telegram/ui/ActionBar/Theme;->chatsHideHeaderShadow:Z

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 1478
    :cond_3c
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$5000(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_3d

    .line 1479
    const-string/jumbo v10, "chatsHideStatusIndicator"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 1480
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "HideStatusIndicator"

    const v12, 0x7f070361

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-boolean v11, Lorg/telegram/ui/ActionBar/Theme;->chatsHideStatusIndicator:Z

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 1481
    :cond_3d
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$5100(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_3e

    .line 1482
    const-string/jumbo v10, "chatsTabsToBottom"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 1483
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "TabsToBottom"

    const v12, 0x7f0706ca

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-boolean v11, Lorg/telegram/ui/ActionBar/Theme;->chatsTabsToBottom:Z

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 1484
    :cond_3e
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$5200(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_1

    .line 1485
    const-string/jumbo v10, "chatsTabTitlesMode"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 1486
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ShowTabTitle"

    const v12, 0x7f070697

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-boolean v11, Lorg/telegram/ui/ActionBar/Theme;->chatsTabTitlesMode:Z

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 1488
    .end local v4    # "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    :cond_3f
    const/4 v10, 0x5

    if-ne v6, v10, :cond_1

    .line 1489
    if-nez p2, :cond_40

    .line 1490
    new-instance p2, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v0, v10}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_40
    move-object/from16 v4, p2

    .line 1493
    check-cast v4, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 1494
    .local v4, "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$1900(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_46

    .line 1495
    const-string/jumbo v10, "chatsHeaderTitle"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1496
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 1497
    const-string/jumbo v10, "chatsHeaderTitle"

    const/4 v11, 0x0

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 1498
    .local v9, "value":I
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v8

    .line 1499
    .local v8, "user_id":I
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    .line 1501
    .local v7, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v7, :cond_41

    iget-object v10, v7, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v10, :cond_41

    iget-object v10, v7, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_41

    .line 1502
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "@"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1506
    .local v3, "text":Ljava/lang/String;
    :goto_7
    if-nez v9, :cond_42

    .line 1507
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "HeaderTitle"

    const v12, 0x7f070352

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "AppName"

    const v12, 0x7f07007d

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1504
    .end local v3    # "text":Ljava/lang/String;
    :cond_41
    const-string/jumbo v3, "-"

    .restart local v3    # "text":Ljava/lang/String;
    goto :goto_7

    .line 1508
    :cond_42
    const/4 v10, 0x1

    if-ne v9, v10, :cond_43

    .line 1509
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "HeaderTitle"

    const v12, 0x7f070352

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "ShortAppName"

    const v12, 0x7f07081b

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1510
    :cond_43
    const/4 v10, 0x2

    if-ne v9, v10, :cond_44

    .line 1511
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "HeaderTitle"

    const v12, 0x7f070352

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v7, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v12, v7, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v11, v12}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1512
    :cond_44
    const/4 v10, 0x3

    if-ne v9, v10, :cond_45

    .line 1513
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "HeaderTitle"

    const v12, 0x7f070352

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v3, v11}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1514
    :cond_45
    const/4 v10, 0x4

    if-ne v9, v10, :cond_1

    .line 1515
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "HeaderTitle"

    const v12, 0x7f070352

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, ""

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1517
    .end local v3    # "text":Ljava/lang/String;
    .end local v7    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v8    # "user_id":I
    .end local v9    # "value":I
    :cond_46
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$2100(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_4b

    .line 1518
    const-string/jumbo v10, "chatsHeaderGradient"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1519
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 1520
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderGradient:I

    .line 1521
    .restart local v9    # "value":I
    if-nez v9, :cond_47

    .line 1522
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientDisabled"

    const v12, 0x7f070600

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1523
    :cond_47
    const/4 v10, 0x1

    if-ne v9, v10, :cond_48

    .line 1524
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientTopBottom"

    const v12, 0x7f070604

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1525
    :cond_48
    const/4 v10, 0x2

    if-ne v9, v10, :cond_49

    .line 1526
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientLeftRight"

    const v12, 0x7f070601

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1527
    :cond_49
    const/4 v10, 0x3

    if-ne v9, v10, :cond_4a

    .line 1528
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientTLBR"

    const v12, 0x7f070603

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1529
    :cond_4a
    const/4 v10, 0x4

    if-ne v9, v10, :cond_1

    .line 1530
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientBLTR"

    const v12, 0x7f0705fe

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1532
    .end local v9    # "value":I
    :cond_4b
    iget-object v10, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemingChatsActivity;->access$2200(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_1

    .line 1533
    const-string/jumbo v10, "chatsRowGradient"

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1534
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 1535
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->chatsRowGradient:I

    if-nez v10, :cond_4c

    .line 1536
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientDisabled"

    const v12, 0x7f070600

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1537
    :cond_4c
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->chatsRowGradient:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4d

    .line 1538
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientTopBottom"

    const v12, 0x7f070604

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1539
    :cond_4d
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->chatsRowGradient:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4e

    .line 1540
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientLeftRight"

    const v12, 0x7f070601

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1541
    :cond_4e
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->chatsRowGradient:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_4f

    .line 1542
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientTLBR"

    const v12, 0x7f070603

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1543
    :cond_4f
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->chatsRowGradient:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_1

    .line 1544
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "RowGradient"

    const v12, 0x7f0705fd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "RowGradientBLTR"

    const v12, 0x7f0705fe

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v11, v12}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1549
    .end local v4    # "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    :cond_50
    const-string/jumbo v10, "windowBackgroundWhite"

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1582
    const/4 v0, 0x6

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1283
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1587
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1254
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$200(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$2100(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderGradient:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$400(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    .line 1255
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$500(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$600(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$700(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$800(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$1900(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    .line 1256
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$900(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$1000(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$1100(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$4000(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    .line 1257
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$1200(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$2200(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->chatsRowGradient:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$1500(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    :cond_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->chatsRowGradient:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$1600(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$1800(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    .line 1258
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$3800(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$4100(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$4200(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$5300(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$5000(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$2300(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    .line 1259
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$2400(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$2500(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$2600(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$2700(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$2800(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$4300(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    .line 1260
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$4400(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$2900(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$3000(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$3100(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$3200(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$3300(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    .line 1261
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$4500(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$3400(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$4600(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$3500(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$4700(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$3600(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    .line 1262
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$3700(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$4800(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$4900(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$1300(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$1400(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$5100(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    .line 1263
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$5200(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$3900(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$1700(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
