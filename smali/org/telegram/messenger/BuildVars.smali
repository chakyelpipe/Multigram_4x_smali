.class public Lorg/telegram/messenger/BuildVars;
.super Ljava/lang/Object;
.source "BuildVars.java"


# static fields
.field public static APP_HASH:Ljava/lang/String;

.field public static APP_ID:I

.field public static BING_SEARCH_KEY:Ljava/lang/String;

.field public static BUILD_VERSION:I

.field public static BUILD_VERSION_STRING:Ljava/lang/String;

.field public static DEBUG_PRIVATE_VERSION:Z

.field public static DEBUG_VERSION:Z

.field public static FOURSQUARE_API_ID:Ljava/lang/String;

.field public static FOURSQUARE_API_KEY:Ljava/lang/String;

.field public static FOURSQUARE_API_VERSION:Ljava/lang/String;

.field public static GCM_SENDER_ID:Ljava/lang/String;

.field public static HASH_DEBUG:I

.field public static HOCKEY_APP_HASH:Ljava/lang/String;

.field public static HOCKEY_APP_HASH_DEBUG:Ljava/lang/String;

.field public static HOCKEY_APP_HASH_DEBUG_SECRET:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    sput-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    .line 13
    sput-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    .line 14
    const/16 v0, 0x417

    sput v0, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION:I

    .line 15
    const-string/jumbo v0, "4.2.1.1"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    .line 16
    const v0, 0x21970

    sput v0, Lorg/telegram/messenger/BuildVars;->APP_ID:I

    .line 17
    const-string/jumbo v0, "a4914ed1a0525366bd21b51e6ed9de9f"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->APP_HASH:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "c614c5bc44dc43b59b05b68474ad0ef6"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->HOCKEY_APP_HASH:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "c614c5bc44dc43b59b05b68474ad0ef6"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->HOCKEY_APP_HASH_DEBUG:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "326898382893"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->GCM_SENDER_ID:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "300f7735cfd04393a38d7838a0bf246b"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->BING_SEARCH_KEY:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "AYVLOEUWYPLCHN113NI41GHUE2NVHO4NHA5XLZWJU152N3ZP"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->FOURSQUARE_API_KEY:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "CRY3VMYDJYBKQQDCZ4YY3ZAACTIITLVMBUUEDSPRXNZVZZA1"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->FOURSQUARE_API_ID:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "20150326"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->FOURSQUARE_API_VERSION:Ljava/lang/String;

    .line 25
    const v0, 0x49d3bb62    # 1734508.2f

    sput v0, Lorg/telegram/messenger/BuildVars;->HASH_DEBUG:I

    .line 26
    const-string/jumbo v0, "5ae36310b7eab71158eaa5382d247f57"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->HOCKEY_APP_HASH_DEBUG_SECRET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
