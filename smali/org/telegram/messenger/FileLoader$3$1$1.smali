.class Lorg/telegram/messenger/FileLoader$3$1$1;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileLoader$3$1;->didFinishUploadingFile(Lorg/telegram/messenger/FileUploadOperation;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;[B[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/FileLoader$3$1;

.field final synthetic val$inputEncryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

.field final synthetic val$inputFile:Lorg/telegram/tgnet/TLRPC$InputFile;

.field final synthetic val$iv:[B

.field final synthetic val$key:[B

.field final synthetic val$operation:Lorg/telegram/messenger/FileUploadOperation;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileLoader$3$1;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;[B[BLorg/telegram/messenger/FileUploadOperation;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/messenger/FileLoader$3$1;

    .prologue
    .line 182
    iput-object p1, p0, Lorg/telegram/messenger/FileLoader$3$1$1;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iput-object p2, p0, Lorg/telegram/messenger/FileLoader$3$1$1;->val$inputFile:Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-object p3, p0, Lorg/telegram/messenger/FileLoader$3$1$1;->val$inputEncryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    iput-object p4, p0, Lorg/telegram/messenger/FileLoader$3$1$1;->val$key:[B

    iput-object p5, p0, Lorg/telegram/messenger/FileLoader$3$1$1;->val$iv:[B

    iput-object p6, p0, Lorg/telegram/messenger/FileLoader$3$1$1;->val$operation:Lorg/telegram/messenger/FileUploadOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    .line 185
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$3$1$1;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-boolean v0, v0, Lorg/telegram/messenger/FileLoader$3;->val$encrypted:Z

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$3$1$1;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$100(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$3$1$1;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$3;->val$location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$3$1$1;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-boolean v0, v0, Lorg/telegram/messenger/FileLoader$3;->val$small:Z

    if-eqz v0, :cond_3

    .line 191
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$3$1$1;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$510(Lorg/telegram/messenger/FileLoader;)I

    .line 192
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$3$1$1;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$500(Lorg/telegram/messenger/FileLoader;)I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 193
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$3$1$1;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/FileUploadOperation;

    .line 194
    .local v8, "operation":Lorg/telegram/messenger/FileUploadOperation;
    if-eqz v8, :cond_0

    .line 195
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$3$1$1;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$508(Lorg/telegram/messenger/FileLoader;)I

    .line 196
    invoke-virtual {v8}, Lorg/telegram/messenger/FileUploadOperation;->start()V

    .line 209
    .end local v8    # "operation":Lorg/telegram/messenger/FileUploadOperation;
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$3$1$1;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$700(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$3$1$1;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$700(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$3$1$1;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$3;->val$location:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoader$3$1$1;->val$inputFile:Lorg/telegram/tgnet/TLRPC$InputFile;

    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$3$1$1;->val$inputEncryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$3$1$1;->val$key:[B

    iget-object v5, p0, Lorg/telegram/messenger/FileLoader$3$1$1;->val$iv:[B

    iget-object v6, p0, Lorg/telegram/messenger/FileLoader$3$1$1;->val$operation:Lorg/telegram/messenger/FileUploadOperation;

    invoke-virtual {v6}, Lorg/telegram/messenger/FileUploadOperation;->getTotalFileSize()J

    move-result-wide v6

    invoke-interface/range {v0 .. v7}, Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;->fileDidUploaded(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;[B[BJ)V

    .line 212
    :cond_1
    return-void

    .line 188
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$3$1$1;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$000(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$3$1$1;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$3;->val$location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 200
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$3$1$1;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$610(Lorg/telegram/messenger/FileLoader;)I

    .line 201
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$3$1$1;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$600(Lorg/telegram/messenger/FileLoader;)I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 202
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$3$1$1;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$300(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/FileUploadOperation;

    .line 203
    .restart local v8    # "operation":Lorg/telegram/messenger/FileUploadOperation;
    if-eqz v8, :cond_0

    .line 204
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$3$1$1;->this$2:Lorg/telegram/messenger/FileLoader$3$1;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$608(Lorg/telegram/messenger/FileLoader;)I

    .line 205
    invoke-virtual {v8}, Lorg/telegram/messenger/FileUploadOperation;->start()V

    goto :goto_1
.end method
