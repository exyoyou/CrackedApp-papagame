.class public Lcom/haima/hmcp/beans/RecommendInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public downloadButtonTitle:Ljava/lang/String;

.field public downloadTips:Ljava/lang/String;

.field public downloadUrl:Ljava/lang/String;

.field public gameSize:Ljava/lang/String;

.field public gameTitle:Ljava/lang/String;

.field public iconUrl:Ljava/lang/String;

.field public mImageIcon:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/RecommendInfo;->mImageIcon:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-void
.end method
