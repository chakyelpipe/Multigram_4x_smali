.class public Lorg/telegram/tgnet/TLRPC$TL_updates_difference;
.super Lorg/telegram/tgnet/TLRPC$updates_Difference;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updates_difference"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2083
    const v0, 0xf49ca0

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_updates_difference;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2082
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$updates_Difference;-><init>()V

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

    .line 2087
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 2088
    .local v2, "magic":I
    if-eq v2, v5, :cond_0

    .line 2089
    if-eqz p2, :cond_1

    .line 2090
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

    .line 2094
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 2095
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 2096
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v3

    .line 2097
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$Message;
    if-nez v3, :cond_2

    .line 2163
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_1
    :goto_1
    return-void

    .line 2100
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_2
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_difference;->new_messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2095
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2102
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_3
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 2103
    if-eq v2, v5, :cond_4

    .line 2104
    if-eqz p2, :cond_1

    .line 2105
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

    .line 2109
    :cond_4
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 2110
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_5

    .line 2111
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$EncryptedMessage;

    move-result-object v3

    .line 2112
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$EncryptedMessage;
    if-eqz v3, :cond_1

    .line 2115
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_difference;->new_encrypted_messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2110
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2117
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$EncryptedMessage;
    :cond_5
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 2118
    if-eq v2, v5, :cond_6

    .line 2119
    if-eqz p2, :cond_1

    .line 2120
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

    .line 2124
    :cond_6
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 2125
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_7

    .line 2126
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Update;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Update;

    move-result-object v3

    .line 2127
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$Update;
    if-eqz v3, :cond_1

    .line 2130
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_difference;->other_updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2125
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2132
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_7
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 2133
    if-eq v2, v5, :cond_8

    .line 2134
    if-eqz p2, :cond_1

    .line 2135
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

    .line 2139
    :cond_8
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 2140
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_9

    .line 2141
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Chat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 2142
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v3, :cond_1

    .line 2145
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_difference;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2140
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2147
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_9
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 2148
    if-eq v2, v5, :cond_a

    .line 2149
    if-eqz p2, :cond_1

    .line 2150
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

    .line 2154
    :cond_a
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 2155
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_b

    .line 2156
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 2157
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v3, :cond_1

    .line 2160
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_difference;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2155
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2162
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$User;
    :cond_b
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_difference;->state:Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    goto/16 :goto_1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    const v3, 0x1cb5c415

    .line 2166
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_updates_difference;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2167
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2168
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_difference;->new_messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2169
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2170
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2171
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_difference;->new_messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Message;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 2170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2173
    :cond_0
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2174
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_difference;->new_encrypted_messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2175
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2176
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 2177
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_difference;->new_encrypted_messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 2176
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2179
    :cond_1
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2180
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_difference;->other_updates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2181
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2182
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_2

    .line 2183
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_difference;->other_updates:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Update;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Update;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 2182
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2185
    :cond_2
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2186
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_difference;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2187
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2188
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_3

    .line 2189
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_difference;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Chat;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 2188
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2191
    :cond_3
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2192
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_difference;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2193
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2194
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_4

    .line 2195
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_difference;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$User;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 2194
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2197
    :cond_4
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_difference;->state:Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 2198
    return-void
.end method
