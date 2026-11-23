.class public Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "messageType",
            "ad_time"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$l;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$l;->b:I

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$l;->c:J

    .line 9
    .line 10
    return-void
.end method
