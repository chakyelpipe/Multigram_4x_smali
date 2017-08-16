.class public Lorg/telegram/tgnet/TLRPC$TL_account_authorizations;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_account_authorizations"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public authorizations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_authorization;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21935
    const v0, 0x1250abde

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_account_authorizations;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21934
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 21937
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_authorizations;->authorizations:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_account_authorizations;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 21940
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_account_authorizations;->constructor:I

    if-eq v1, p1, :cond_1

    .line 21941
    if-eqz p2, :cond_0

    .line 21942
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in TL_account_authorizations"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 21944
    :cond_0
    const/4 v0, 0x0

    .line 21949
    :goto_0
    return-object v0

    .line 21947
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_authorizations;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_authorizations;-><init>()V

    .line 21948
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_account_authorizations;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_account_authorizations;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 9
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 21953
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 21954
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_0

    .line 21955
    if-eqz p2, :cond_1

    .line 21956
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "wrong Vector magic, got %x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 21960
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 21961
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 21962
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$TL_authorization;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_authorization;

    move-result-object v3

    .line 21963
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$TL_authorization;
    if-nez v3, :cond_2

    .line 21968
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_authorization;
    :cond_1
    return-void

    .line 21966
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_authorization;
    :cond_2
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_account_authorizations;->authorizations:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21961
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 21971
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_account_authorizations;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21972
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21973
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_account_authorizations;->authorizations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 21974
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21975
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 21976
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_account_authorizations;->authorizations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_authorization;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 21975
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21978
    :cond_0
    return-void
.end method
