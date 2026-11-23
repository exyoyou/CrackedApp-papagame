.class public final Lcom/android/dx/cf/attrib/AttLineNumberTable;
.super Lcom/android/dx/cf/attrib/BaseAttribute;
.source "SourceFile"


# static fields
.field public static final ATTRIBUTE_NAME:Ljava/lang/String; = "LineNumberTable"


# instance fields
.field private final lineNumbers:Lcom/android/dx/cf/code/LineNumberList;


# direct methods
.method public constructor <init>(Lcom/android/dx/cf/code/LineNumberList;)V
    .locals 1

    .line 1
    const-string v0, "LineNumberTable"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/android/dx/cf/attrib/BaseAttribute;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p1}, Lcom/android/dx/util/MutabilityControl;->isMutable()Z

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/dx/cf/attrib/AttLineNumberTable;->lineNumbers:Lcom/android/dx/cf/code/LineNumberList;

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    :try_start_1
    new-instance p1, Lcom/android/dx/util/MutabilityException;

    .line 16
    .line 17
    const-string v0, "lineNumbers.isMutable()"

    .line 18
    .line 19
    invoke-direct {p1, v0}, Lcom/android/dx/util/MutabilityException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 23
    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 24
    .line 25
    const-string v0, "lineNumbers == null"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method


# virtual methods
.method public byteLength()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/dx/cf/attrib/AttLineNumberTable;->lineNumbers:Lcom/android/dx/cf/code/LineNumberList;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/dx/util/FixedSizeList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x4

    .line 8
    .line 9
    add-int/lit8 v0, v0, 0x8

    .line 10
    .line 11
    return v0
.end method

.method public getLineNumbers()Lcom/android/dx/cf/code/LineNumberList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/dx/cf/attrib/AttLineNumberTable;->lineNumbers:Lcom/android/dx/cf/code/LineNumberList;

    .line 2
    .line 3
    return-object v0
.end method
