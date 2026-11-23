.class public Lcom/byazt/sgn/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd3,
        0xff
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/sgn/a;->ve()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/sgn/a;


# direct methods
.method public constructor <init>(Lcom/byazt/sgn/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sgn/a$1;->c:Lcom/byazt/sgn/a;

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
    iget-object p1, p0, Lcom/byazt/sgn/a$1;->c:Lcom/byazt/sgn/a;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/byazt/sgn/a;->tt:Lcom/byazt/sgn/a$c;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/byazt/sgn/a$c;->c()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
