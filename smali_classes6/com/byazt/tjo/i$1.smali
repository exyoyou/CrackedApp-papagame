.class public Lcom/byazt/tjo/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yf/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x204,
        0xcb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tjo/i;->showOpenOrInstallAppDialog(Lcom/byazt/cw/uj;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/cw/uj;

.field public final synthetic tt:Lcom/byazt/tjo/i;


# direct methods
.method public constructor <init>(Lcom/byazt/tjo/i;Lcom/byazt/cw/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tjo/i$1;->tt:Lcom/byazt/tjo/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/tjo/i$1;->c:Lcom/byazt/cw/uj;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/tjo/i$1;->c:Lcom/byazt/cw/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/cw/uj;->c(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
