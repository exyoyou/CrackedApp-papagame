.class public Lcom/byazt/un/a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/nat/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x60,
        0x18a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/un/a;->m()V
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
    iput-object p1, p0, Lcom/byazt/un/a$5;->c:Lcom/byazt/un/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/un/a$5;->c:Lcom/byazt/un/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/un/a;->ve(Lcom/byazt/un/a;)Lcom/byazt/un/NativeVideoTsView$c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/un/a$5;->c:Lcom/byazt/un/a;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/un/a;->ve(Lcom/byazt/un/a;)Lcom/byazt/un/NativeVideoTsView$c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1, p2}, Lcom/byazt/un/NativeVideoTsView$c;->c(Landroid/view/View;I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
