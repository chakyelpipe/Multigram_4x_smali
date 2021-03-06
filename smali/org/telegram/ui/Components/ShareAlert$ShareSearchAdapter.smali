.class public Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ShareAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ShareAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShareSearchAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private lastReqId:I

.field private lastSearchId:I

.field private lastSearchText:Ljava/lang/String;

.field private reqId:I

.field private searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private searchTimer:Ljava/util/Timer;

.field final synthetic this$0:Lorg/telegram/ui/Components/ShareAlert;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ShareAlert;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 728
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 715
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 717
    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->reqId:I

    .line 719
    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchId:I

    .line 729
    iput-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->context:Landroid/content/Context;

    .line 730
    return-void
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    .prologue
    .line 711
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchId:I

    return v0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 711
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchId:I

    return p1
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Ljava/util/ArrayList;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I

    .prologue
    .line 711
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    .prologue
    .line 711
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 711
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    .prologue
    .line 711
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$3302(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 711
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 711
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchDialogsInternal(Ljava/lang/String;I)V

    return-void
.end method

.method private searchDialogsInternal(Ljava/lang/String;I)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "searchId"    # I

    .prologue
    .line 733
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 928
    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;I)V
    .locals 1
    .param p2, "searchId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 931
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;>;"
    new-instance v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$2;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$2;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;ILjava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 960
    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1004
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1005
    :cond_0
    const/4 v0, 0x0

    .line 1007
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 1012
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1036
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1017
    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 1029
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/ShareDialogCell;

    .line 1030
    .local v0, "cell":Lorg/telegram/ui/Cells/ShareDialogCell;
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;

    .line 1031
    .local v1, "result":Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;
    iget-object v2, v1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->access$1300(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, v1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Cells/ShareDialogCell;->setDialog(IZLjava/lang/CharSequence;)V

    .line 1032
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 1022
    new-instance v0, Lorg/telegram/ui/Cells/ShareDialogCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ShareDialogCell;-><init>(Landroid/content/Context;)V

    .line 1023
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1024
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public searchDialogs(Ljava/lang/String;)V
    .locals 8
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 963
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    :goto_0
    return-void

    .line 966
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchText:Ljava/lang/String;

    .line 968
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 969
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 970
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchTimer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 975
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 976
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 977
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$2300(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ShareAlert;->access$2202(Lorg/telegram/ui/Components/ShareAlert;I)I

    .line 978
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 972
    :catch_0
    move-exception v6

    .line 973
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 980
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchId:I

    add-int/lit8 v7, v0, 0x1

    iput v7, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchId:I

    .line 981
    .local v7, "searchId":I
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchTimer:Ljava/util/Timer;

    .line 982
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$3;

    invoke-direct {v1, p0, p1, v7}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$3;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Ljava/lang/String;I)V

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method
