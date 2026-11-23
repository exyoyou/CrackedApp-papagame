.class public Lcom/byazt/omf/rh$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ee/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0xb5
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/rh$5;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Lcom/byazt/omf/rh$5;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/rh$5;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/rh$5$1;->tt:Lcom/byazt/omf/rh$5;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/omf/rh$5$1;->c:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/qal/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/byazt/qal/tt;->tt()Lcom/byazt/qal/tt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/byazt/omf/rh$5$1;->c:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->tt(I)Lcom/byazt/qal/tt;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, Lcom/byazt/omf/rh$5$1;->c:I

    .line 12
    .line 13
    invoke-static {v1}, Lcom/byazt/omf/sp;->c(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->sp(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method
