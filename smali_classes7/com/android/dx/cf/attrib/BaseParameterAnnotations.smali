.class public abstract Lcom/android/dx/cf/attrib/BaseParameterAnnotations;
.super Lcom/android/dx/cf/attrib/BaseAttribute;
.source "SourceFile"


# instance fields
.field private final byteLength:I

.field private final parameterAnnotations:Lcom/android/dx/rop/annotation/AnnotationsList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/dx/rop/annotation/AnnotationsList;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/dx/cf/attrib/BaseAttribute;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p2}, Lcom/android/dx/util/MutabilityControl;->isMutable()Z

    .line 5
    .line 6
    .line 7
    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iput-object p2, p0, Lcom/android/dx/cf/attrib/BaseParameterAnnotations;->parameterAnnotations:Lcom/android/dx/rop/annotation/AnnotationsList;

    .line 11
    .line 12
    iput p3, p0, Lcom/android/dx/cf/attrib/BaseParameterAnnotations;->byteLength:I

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    :try_start_1
    new-instance p1, Lcom/android/dx/util/MutabilityException;

    .line 16
    .line 17
    const-string p2, "parameterAnnotations.isMutable()"

    .line 18
    .line 19
    invoke-direct {p1, p2}, Lcom/android/dx/util/MutabilityException;-><init>(Ljava/lang/String;)V

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
    const-string p2, "parameterAnnotations == null"

    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method


# virtual methods
.method public final byteLength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dx/cf/attrib/BaseParameterAnnotations;->byteLength:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x6

    .line 4
    .line 5
    return v0
.end method

.method public final getParameterAnnotations()Lcom/android/dx/rop/annotation/AnnotationsList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/dx/cf/attrib/BaseParameterAnnotations;->parameterAnnotations:Lcom/android/dx/rop/annotation/AnnotationsList;

    .line 2
    .line 3
    return-object v0
.end method
