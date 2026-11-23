.class public final Lcom/alibaba/fastjson/serializer/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/serializer/w0$a;
    }
.end annotation


# static fields
.field public static final c:I = 0x80


# instance fields
.field private final a:[Lcom/alibaba/fastjson/serializer/w0$a;

.field private final b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x80

    .line 1
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/w0;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v0, p1, -0x1

    .line 3
    iput v0, p0, Lcom/alibaba/fastjson/serializer/w0;->b:I

    .line 4
    new-array p1, p1, [Lcom/alibaba/fastjson/serializer/w0$a;

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/w0;->a:[Lcom/alibaba/fastjson/serializer/w0$a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/alibaba/fastjson/serializer/w0;->b:I

    .line 6
    .line 7
    and-int/2addr v1, v0

    .line 8
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/w0;->a:[Lcom/alibaba/fastjson/serializer/w0$a;

    .line 9
    .line 10
    aget-object v2, v2, v1

    .line 11
    .line 12
    :goto_0
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget-object v3, v2, Lcom/alibaba/fastjson/serializer/w0$a;->b:Ljava/lang/Object;

    .line 15
    .line 16
    if-ne p1, v3, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    return p1

    .line 20
    :cond_0
    iget-object v2, v2, Lcom/alibaba/fastjson/serializer/w0$a;->c:Lcom/alibaba/fastjson/serializer/w0$a;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v2, Lcom/alibaba/fastjson/serializer/w0$a;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/w0;->a:[Lcom/alibaba/fastjson/serializer/w0$a;

    .line 26
    .line 27
    aget-object v3, v3, v1

    .line 28
    .line 29
    invoke-direct {v2, p1, v0, v3}, Lcom/alibaba/fastjson/serializer/w0$a;-><init>(Ljava/lang/Object;ILcom/alibaba/fastjson/serializer/w0$a;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/w0;->a:[Lcom/alibaba/fastjson/serializer/w0$a;

    .line 33
    .line 34
    aput-object v2, p1, v1

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    return p1
.end method
