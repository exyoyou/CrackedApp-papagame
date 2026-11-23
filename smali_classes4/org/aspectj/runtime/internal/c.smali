.class public Lorg/aspectj/runtime/internal/c;
.super Lbd/a;
.source "SourceFile"


# instance fields
.field private b:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbd/a;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/aspectj/runtime/internal/c;->b:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2}, Lbd/a;-><init>(Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lorg/aspectj/runtime/internal/c;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/aspectj/runtime/internal/c;->b:[Ljava/lang/Object;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    return-object p1
.end method
