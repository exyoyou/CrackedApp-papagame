.class public Lcom/byazt/pro/uj$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/un/NativeVideoTsView$uj;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xc7,
        0x61
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/pro/uj;->inflate(Landroid/content/Context;)Lcom/byazt/un/NativeVideoTsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/pro/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/pro/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/pro/uj$2;->c:Lcom/byazt/pro/uj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(ZJJJZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pro/uj$2;->c:Lcom/byazt/pro/uj;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/pro/uj;->c:Lcom/byazt/ua/c;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-boolean p1, v0, Lcom/byazt/ua/c;->c:Z

    .line 8
    .line 9
    iput-wide p2, v0, Lcom/byazt/ua/c;->n:J

    .line 10
    .line 11
    iput-wide p4, v0, Lcom/byazt/ua/c;->a:J

    .line 12
    .line 13
    iput-wide p6, v0, Lcom/byazt/ua/c;->sp:J

    .line 14
    .line 15
    iput-boolean p8, v0, Lcom/byazt/ua/c;->uj:Z

    .line 16
    .line 17
    iput-boolean p9, v0, Lcom/byazt/ua/c;->x:Z

    .line 18
    .line 19
    :cond_0
    return-void
.end method
