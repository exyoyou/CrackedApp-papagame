.class public Lcom/byazt/ac/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/bd/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x59,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ac/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ac/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/ac/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ac/tt$1;->c:Lcom/byazt/ac/tt;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/tt$1;->c:Lcom/byazt/ac/tt;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->x(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
