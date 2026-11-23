.class public final enum Lcom/czhj/volley/toolbox/DownloadItem$FileType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/czhj/volley/toolbox/DownloadItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/czhj/volley/toolbox/DownloadItem$FileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/czhj/volley/toolbox/DownloadItem$FileType;

.field public static final enum APK:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

.field public static final enum FILE:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

.field public static final enum MRAID_VIDEO:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

.field public static final enum OTHER:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

.field public static final enum PICTURE:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

.field public static final enum VIDEO:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

.field public static final enum ZIP_FILE:Lcom/czhj/volley/toolbox/DownloadItem$FileType;


# instance fields
.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    const-string v1, "VIDEO"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/czhj/volley/toolbox/DownloadItem$FileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/czhj/volley/toolbox/DownloadItem$FileType;->VIDEO:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    new-instance v1, Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    const-string v4, "PICTURE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/czhj/volley/toolbox/DownloadItem$FileType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/czhj/volley/toolbox/DownloadItem$FileType;->PICTURE:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    new-instance v4, Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    const-string v6, "FILE"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/czhj/volley/toolbox/DownloadItem$FileType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/czhj/volley/toolbox/DownloadItem$FileType;->FILE:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    new-instance v6, Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    const-string v8, "APK"

    const/16 v9, 0x8

    invoke-direct {v6, v8, v7, v9}, Lcom/czhj/volley/toolbox/DownloadItem$FileType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/czhj/volley/toolbox/DownloadItem$FileType;->APK:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    new-instance v8, Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    const/16 v9, 0x9

    const-string v10, "OTHER"

    const/4 v11, 0x4

    invoke-direct {v8, v10, v11, v9}, Lcom/czhj/volley/toolbox/DownloadItem$FileType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/czhj/volley/toolbox/DownloadItem$FileType;->OTHER:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    new-instance v9, Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    const/16 v10, 0xa

    const-string v12, "ZIP_FILE"

    const/4 v13, 0x5

    invoke-direct {v9, v12, v13, v10}, Lcom/czhj/volley/toolbox/DownloadItem$FileType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/czhj/volley/toolbox/DownloadItem$FileType;->ZIP_FILE:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    new-instance v10, Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    const/16 v12, 0xb

    const-string v14, "MRAID_VIDEO"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/czhj/volley/toolbox/DownloadItem$FileType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/czhj/volley/toolbox/DownloadItem$FileType;->MRAID_VIDEO:Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    const/4 v12, 0x7

    new-array v12, v12, [Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    aput-object v0, v12, v2

    aput-object v1, v12, v3

    aput-object v4, v12, v5

    aput-object v6, v12, v7

    aput-object v8, v12, v11

    aput-object v9, v12, v13

    aput-object v10, v12, v15

    sput-object v12, Lcom/czhj/volley/toolbox/DownloadItem$FileType;->$VALUES:[Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/czhj/volley/toolbox/DownloadItem$FileType;->mType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/czhj/volley/toolbox/DownloadItem$FileType;
    .locals 1

    const-class v0, Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    return-object p0
.end method

.method public static values()[Lcom/czhj/volley/toolbox/DownloadItem$FileType;
    .locals 1

    sget-object v0, Lcom/czhj/volley/toolbox/DownloadItem$FileType;->$VALUES:[Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    invoke-virtual {v0}, [Lcom/czhj/volley/toolbox/DownloadItem$FileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/czhj/volley/toolbox/DownloadItem$FileType;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    iget v0, p0, Lcom/czhj/volley/toolbox/DownloadItem$FileType;->mType:I

    return v0
.end method
