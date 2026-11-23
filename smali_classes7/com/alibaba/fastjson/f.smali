.class Lcom/alibaba/fastjson/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final c:I = 0x3e9

.field static final d:I = 0x3ea

.field static final e:I = 0x3eb

.field static final f:I = 0x3ec

.field static final g:I = 0x3ed


# instance fields
.field private final a:Lcom/alibaba/fastjson/f;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/f;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/alibaba/fastjson/f;->a:Lcom/alibaba/fastjson/f;

    .line 5
    .line 6
    iput p2, p0, Lcom/alibaba/fastjson/f;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Lcom/alibaba/fastjson/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/f;->a:Lcom/alibaba/fastjson/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/f;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/alibaba/fastjson/f;->b:I

    .line 2
    .line 3
    return-void
.end method
