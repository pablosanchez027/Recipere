@extends('layouts.default')
@section('titulo_pagina','Pacientes')
@section('titulo','Pacientes')
@section('contenido')
<div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Lista de pacientes</h4>
                    <table class="table table-striped">
                      <thead>
                        <tr>
                          <th> Nombre y apellido</th>
                          <th> Nacimiento </th>
                          <th> Editar</th>
                        </tr>
                      </thead>
                      <tbody>
                            @foreach($pacientes as $paciente)
                              <tr>
                                <td>
                                  {{ $paciente->nombre . " " . $paciente->apellidos }}
                                </td>
                                <td>
                                  {{ $paciente->nacimiento }}
                                </td>
                                <td>
                                <a class="btn btn-dark btn-fw" href="{{route('pacientes.edit',$paciente->id)}}">
                                <i class="mdi mdi-cloud-download"></i>Editar</a>
                                </td>
                              </tr>
                              @endforeach
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
@endsection