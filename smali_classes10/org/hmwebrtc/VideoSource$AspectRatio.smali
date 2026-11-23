.class public Lorg/hmwebrtc/VideoSource$AspectRatio;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/VideoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AspectRatio"
.end annotation


# static fields
.field public static final UNDEFINED:Lorg/hmwebrtc/VideoSource$AspectRatio;


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/hmwebrtc/VideoSource$AspectRatio;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, v1}, Lorg/hmwebrtc/VideoSource$AspectRatio;-><init>(II)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/hmwebrtc/VideoSource$AspectRatio;->UNDEFINED:Lorg/hmwebrtc/VideoSource$AspectRatio;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/hmwebrtc/VideoSource$AspectRatio;->width:I

    .line 5
    .line 6
    iput p2, p0, Lorg/hmwebrtc/VideoSource$AspectRatio;->height:I

    .line 7
    .line 8
    return-void
.end method
