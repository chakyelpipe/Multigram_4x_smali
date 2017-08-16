.class Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;
.super Landroid/os/AsyncTask;
.source "WebPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/WebPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoubVideoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private canRetry:Z

.field private results:[Ljava/lang/String;

.field final synthetic this$0:Lorg/telegram/ui/Components/WebPlayerView;

.field private videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)V
    .locals 1
    .param p2, "vid"    # Ljava/lang/String;

    .prologue
    .line 867
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 864
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->canRetry:Z

    .line 865
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->results:[Ljava/lang/String;

    .line 868
    iput-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->videoId:Ljava/lang/String;

    .line 869
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 861
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 12
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 872
    iget-object v6, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v8, "https://coub.com/api/v2/coubs/%s.json"

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->videoId:Ljava/lang/String;

    aput-object v10, v9, v11

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p0, v7}, Lorg/telegram/ui/Components/WebPlayerView;->downloadUrlContent(Landroid/os/AsyncTask;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 873
    .local v3, "playerCode":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 889
    :cond_0
    :goto_0
    return-object v5

    .line 877
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 878
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v6, "file"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 879
    .local v4, "video":Ljava/lang/String;
    const-string/jumbo v6, "audio_file_url"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 880
    .local v0, "audio":Ljava/lang/String;
    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    .line 881
    iget-object v6, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->results:[Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    .line 882
    iget-object v6, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->results:[Ljava/lang/String;

    const/4 v7, 0x1

    const-string/jumbo v8, "other"

    aput-object v8, v6, v7

    .line 883
    iget-object v6, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->results:[Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v0, v6, v7

    .line 884
    iget-object v6, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->results:[Ljava/lang/String;

    const/4 v7, 0x3

    const-string/jumbo v8, "other"

    aput-object v8, v6, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    .end local v0    # "audio":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v4    # "video":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v5, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->results:[Ljava/lang/String;

    aget-object v5, v5, v11

    goto :goto_0

    .line 886
    :catch_0
    move-exception v1

    .line 887
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 861
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 894
    if-eqz p1, :cond_2

    .line 895
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->initied:Z
    invoke-static {v0, v3}, Lorg/telegram/ui/Components/WebPlayerView;->access$1702(Lorg/telegram/ui/Components/WebPlayerView;Z)Z

    .line 896
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->playVideoUrl:Ljava/lang/String;
    invoke-static {v0, p1}, Lorg/telegram/ui/Components/WebPlayerView;->access$1902(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;

    .line 897
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->results:[Ljava/lang/String;

    aget-object v1, v1, v3

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->playVideoType:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$1802(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;

    .line 898
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->results:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->playAudioUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$2502(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;

    .line 899
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->results:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->playAudioType:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$2602(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;

    .line 900
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->isAutoplay:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2000(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # invokes: Lorg/telegram/ui/Components/WebPlayerView;->preparePlayer()V
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2100(Lorg/telegram/ui/Components/WebPlayerView;)V

    .line 903
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    const/4 v1, 0x0

    # invokes: Lorg/telegram/ui/Components/WebPlayerView;->showProgress(ZZ)V
    invoke-static {v0, v1, v3}, Lorg/telegram/ui/Components/WebPlayerView;->access$2200(Lorg/telegram/ui/Components/WebPlayerView;ZZ)V

    .line 904
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$100(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    .line 908
    :cond_1
    :goto_0
    return-void

    .line 905
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 906
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # invokes: Lorg/telegram/ui/Components/WebPlayerView;->onInitFailed()V
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2300(Lorg/telegram/ui/Components/WebPlayerView;)V

    goto :goto_0
.end method
