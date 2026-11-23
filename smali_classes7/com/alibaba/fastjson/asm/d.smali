.class final Lcom/alibaba/fastjson/asm/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/asm/c;


# instance fields
.field a:Lcom/alibaba/fastjson/asm/d;

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(Lcom/alibaba/fastjson/asm/b;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/alibaba/fastjson/asm/b;->p:Lcom/alibaba/fastjson/asm/d;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iput-object p0, p1, Lcom/alibaba/fastjson/asm/b;->p:Lcom/alibaba/fastjson/asm/d;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson/asm/b;->q:Lcom/alibaba/fastjson/asm/d;

    .line 12
    .line 13
    iput-object p0, v0, Lcom/alibaba/fastjson/asm/d;->a:Lcom/alibaba/fastjson/asm/d;

    .line 14
    .line 15
    :goto_0
    iput-object p0, p1, Lcom/alibaba/fastjson/asm/b;->q:Lcom/alibaba/fastjson/asm/d;

    .line 16
    .line 17
    iput p2, p0, Lcom/alibaba/fastjson/asm/d;->b:I

    .line 18
    .line 19
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/asm/b;->k(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    iput p2, p0, Lcom/alibaba/fastjson/asm/d;->c:I

    .line 24
    .line 25
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/asm/b;->k(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, p0, Lcom/alibaba/fastjson/asm/d;->d:I

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method b()I
    .locals 1

    .line 1
    const/16 v0, 0x8

    return v0
.end method

.method c(Lcom/alibaba/fastjson/asm/a;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/asm/d;->b:I

    .line 2
    .line 3
    const/high16 v1, 0x40000

    .line 4
    .line 5
    and-int/2addr v1, v0

    .line 6
    div-int/lit8 v1, v1, 0x40

    .line 7
    .line 8
    const/high16 v2, 0x60000

    .line 9
    .line 10
    or-int/2addr v1, v2

    .line 11
    not-int v1, v1

    .line 12
    and-int/2addr v0, v1

    .line 13
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/a;->g(I)Lcom/alibaba/fastjson/asm/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v1, p0, Lcom/alibaba/fastjson/asm/d;->c:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/asm/a;->g(I)Lcom/alibaba/fastjson/asm/a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v1, p0, Lcom/alibaba/fastjson/asm/d;->d:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/asm/a;->g(I)Lcom/alibaba/fastjson/asm/a;

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/a;->g(I)Lcom/alibaba/fastjson/asm/a;

    .line 30
    .line 31
    .line 32
    return-void
.end method
