.class public Lcom/alibaba/fastjson/parser/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/parser/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/alibaba/fastjson/parser/j;

.field private final b:Ljava/lang/String;

.field private c:Lcom/alibaba/fastjson/parser/deserializer/r;

.field private d:Lcom/alibaba/fastjson/parser/j;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/j;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/c$a;->a:Lcom/alibaba/fastjson/parser/j;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/c$a;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Lcom/alibaba/fastjson/parser/deserializer/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c$a;->c:Lcom/alibaba/fastjson/parser/deserializer/r;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Lcom/alibaba/fastjson/parser/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c$a;->d:Lcom/alibaba/fastjson/parser/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c$a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public d(Lcom/alibaba/fastjson/parser/deserializer/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/c$a;->c:Lcom/alibaba/fastjson/parser/deserializer/r;

    .line 2
    .line 3
    return-void
.end method

.method public e(Lcom/alibaba/fastjson/parser/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/c$a;->d:Lcom/alibaba/fastjson/parser/j;

    .line 2
    .line 3
    return-void
.end method

.method public getContext()Lcom/alibaba/fastjson/parser/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/c$a;->a:Lcom/alibaba/fastjson/parser/j;

    .line 2
    .line 3
    return-object v0
.end method
