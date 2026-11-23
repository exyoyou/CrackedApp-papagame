.class public Lcom/byazt/un/a$2;
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
        0xfe
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/un/a;->c(Lcom/byazt/ete/ic;Ljava/lang/ref/WeakReference;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/un/a;


# direct methods
.method public constructor <init>(Lcom/byazt/un/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/un/a$2;->c:Lcom/byazt/un/a;

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
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/un/a$2;->c:Lcom/byazt/un/a;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/byazt/un/a;->eo:Lcom/byazt/dh/ve;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    check-cast p1, Lcom/byazt/dh/c;

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/byazt/dh/c;->c()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/byazt/un/a$2;->c:Lcom/byazt/un/a;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/byazt/un/a;->cu:Lcom/byazt/uz/c;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/byazt/uz/c;->c()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
