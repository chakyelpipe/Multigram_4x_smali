.class Lorg/telegram/messenger/MessagesStorage$73;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->setMessageSeq(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$mid:I

.field final synthetic val$seq_in:I

.field final synthetic val$seq_out:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;III)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 4867
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$73;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$73;->val$mid:I

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$73;->val$seq_in:I

    iput p4, p0, Lorg/telegram/messenger/MessagesStorage$73;->val$seq_out:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4871
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$73;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "REPLACE INTO messages_seq VALUES(?, ?, ?)"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    .line 4872
    .local v1, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4873
    const/4 v2, 0x1

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$73;->val$mid:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4874
    const/4 v2, 0x2

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$73;->val$seq_in:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4875
    const/4 v2, 0x3

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$73;->val$seq_out:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4876
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 4877
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4881
    .end local v1    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :goto_0
    return-void

    .line 4878
    :catch_0
    move-exception v0

    .line 4879
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
