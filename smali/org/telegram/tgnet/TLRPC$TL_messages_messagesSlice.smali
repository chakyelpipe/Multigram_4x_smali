.class public Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;
.super Lorg/telegram/tgnet/TLRPC$messages_Messages;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_messagesSlice"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1478
    const v0, 0xb446ae3

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1477
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$messages_Messages;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 9
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const v5, 0x1cb5c415

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 1482
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;->count:I

    .line 1483
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 1484
    .local v2, "magic":I
    if-eq v2, v5, :cond_0

    .line 1485
    if-eqz p2, :cond_1

    .line 1486
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "wrong Vector magic, got %x"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1490
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 1491
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 1492
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v3

    .line 1493
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$Message;
    if-nez v3, :cond_2

    .line 1528
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_1
    return-void

    .line 1496
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_2
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1491
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1498
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_3
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 1499
    if-eq v2, v5, :cond_4

    .line 1500
    if-eqz p2, :cond_1

    .line 1501
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "wrong Vector magic, got %x"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1505
    :cond_4
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 1506
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_5

    .line 1507
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Chat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 1508
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v3, :cond_1

    .line 1511
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1506
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1513
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_5
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 1514
    if-eq v2, v5, :cond_6

    .line 1515
    if-eqz p2, :cond_1

    .line 1516
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "wrong Vector magic, got %x"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1520
    :cond_6
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 1521
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_1

    .line 1522
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 1523
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v3, :cond_1

    .line 1526
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1521
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    const v3, 0x1cb5c415

    .line 1531
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1532
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;->count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1533
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1534
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1535
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1536
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1537
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Message;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 1536
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1539
    :cond_0
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1540
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1541
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1542
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 1543
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Chat;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 1542
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1545
    :cond_1
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1546
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1547
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1548
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_2

    .line 1549
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$User;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 1548
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1551
    :cond_2
    return-void
.end method
