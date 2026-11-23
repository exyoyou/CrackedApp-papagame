.class public Lcom/byazt/ac/c$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/el/SSWebView$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x59,
        0x66
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ac/c;->yv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ac/c;


# direct methods
.method public constructor <init>(Lcom/byazt/ac/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ac/c$6;->c:Lcom/byazt/ac/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c$6;->c:Lcom/byazt/ac/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/byazt/omf/d;->c(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
