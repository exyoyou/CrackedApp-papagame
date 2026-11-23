.class public Lcom/byazt/un/n$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x60,
        0x245
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/un/n;->uj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/un/n;


# direct methods
.method public constructor <init>(Lcom/byazt/un/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/un/n$6;->c:Lcom/byazt/un/n;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/un/n$6;->c:Lcom/byazt/un/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/un/a;->rl()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/un/n$6;->c:Lcom/byazt/un/n;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/byazt/un/a;->md:Lcom/byazt/un/tt;

    .line 12
    .line 13
    invoke-interface {v1, v0, p1}, Lcom/byazt/dh/c;->tt(Lcom/byazt/dh/tt;Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
