.class public final Lcom/byazt/yf/da$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yf/m;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1fc,
        0x138
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/yf/da;->c(Landroid/app/Activity;Ljava/util/List;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic tt:Ljava/util/List;

.field public final synthetic uj:I

.field public final synthetic ve:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/yf/da$1;->c:Landroid/app/Activity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/yf/da$1;->tt:Ljava/util/List;

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/yf/da$1;->ve:I

    .line 6
    .line 7
    iput p4, p0, Lcom/byazt/yf/da$1;->uj:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/byazt/ix/uj;->c()Lcom/byazt/ix/uj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/yf/da$1;->c:Landroid/app/Activity;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/byazt/yf/da$1;->tt:Ljava/util/List;

    .line 8
    .line 9
    iget v3, p0, Lcom/byazt/yf/da$1;->ve:I

    .line 10
    .line 11
    iget v4, p0, Lcom/byazt/yf/da$1;->uj:I

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/byazt/ix/uj;->c(Landroid/app/Activity;Ljava/util/List;II)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
