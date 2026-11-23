.class public Lcom/haima/hmcp/beans/TouchesMappingConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_DEFAULT:I = 0x1

.field public static final TYPE_DISABLED:I = 0x0

.field public static final TYPE_ROCKER_LEFT:I = 0x2

.field public static final TYPE_ROCKER_RIGHT:I = 0x3


# instance fields
.field public sensitivity:F

.field public touchesMapperType:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/beans/TouchesMappingConfig;->touchesMapperType:Ljava/lang/Integer;

    .line 10
    .line 11
    return-void
.end method
