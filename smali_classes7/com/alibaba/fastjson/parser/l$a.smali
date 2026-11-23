.class public final Lcom/alibaba/fastjson/parser/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/parser/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:[C

.field public final d:[B

.field public e:Lcom/alibaba/fastjson/parser/l$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILcom/alibaba/fastjson/parser/l$a;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/2addr p3, p2

    .line 9
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/l$a;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/l$a;->c:[C

    .line 11
    iput-object p5, p0, Lcom/alibaba/fastjson/parser/l$a;->e:Lcom/alibaba/fastjson/parser/l$a;

    .line 12
    iput p4, p0, Lcom/alibaba/fastjson/parser/l$a;->b:I

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/l$a;->d:[B

    return-void
.end method

.method public constructor <init>([CIIILcom/alibaba/fastjson/parser/l$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array v0, p3, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/l$a;->c:[C

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/l$a;->a:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/alibaba/fastjson/parser/l$a;->e:Lcom/alibaba/fastjson/parser/l$a;

    .line 6
    iput p4, p0, Lcom/alibaba/fastjson/parser/l$a;->b:I

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/l$a;->d:[B

    return-void
.end method
