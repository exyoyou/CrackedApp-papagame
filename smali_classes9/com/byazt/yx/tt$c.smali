.class public final Lcom/byazt/yx/tt$c;
.super Lcom/byazt/mk/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xfc,
        0xc2
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/yx/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field public c:J


# direct methods
.method public constructor <init>(Lcom/byazt/mk/rh;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/mk/sp;-><init>(Lcom/byazt/mk/rh;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a_(Lcom/byazt/mk/ve;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/byazt/mk/sp;->a_(Lcom/byazt/mk/ve;J)V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lcom/byazt/yx/tt$c;->c:J

    .line 5
    .line 6
    add-long/2addr v0, p2

    .line 7
    iput-wide v0, p0, Lcom/byazt/yx/tt$c;->c:J

    .line 8
    .line 9
    return-void
.end method
