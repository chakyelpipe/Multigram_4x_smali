.class final Lorg/telegram/messenger/query/StickersQuery$18;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->markFaturedStickersByIdAsRead(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$id:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 764
    iput-wide p1, p0, Lorg/telegram/messenger/query/StickersQuery$18;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 767
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$1300()Ljava/util/ArrayList;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/messenger/query/StickersQuery$18;->val$id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 768
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$1700()Ljava/util/ArrayList;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/messenger/query/StickersQuery$18;->val$id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 769
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$1500()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$700(Ljava/util/ArrayList;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->access$1102(I)I

    .line 770
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoaded:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 771
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$1500()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$1300()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$1600()I

    move-result v2

    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$1100()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/query/StickersQuery;->access$1200(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 772
    return-void
.end method
